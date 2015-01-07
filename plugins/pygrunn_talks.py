# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from collections import defaultdict
from datetime import datetime
import logging

from pelican.contents import Content, is_valid_content
from pelican.generators import Generator
from pelican import signals


logger = logging.getLogger(__name__)


class Talk(Content):
    """Wrapper class for Talk content to live in."""
    mandatory_properties = ('slug',)
    default_template = 'page'

    def get_priority(self):
        if not hasattr(self, 'priority'):
            return 100
        else:
            return int(self.priority)


class TalkManager(object):
    """Manager for easy access to talk objects in templates."""
    def __init__(self, settings):
        self.contents = {}
        self.settings = settings

    def add(self, content):
        if not isinstance(content, Talk):
            raise Exception("This manager only accepts 'Talk' objects")

        self.contents[content.slug] = content

    def get(self, slug):
        content = self.contents.get(slug, "")
        return getattr(content, "content", "")

    def all(self):
        return sorted(self.contents.values(), key=lambda x: x.get_priority())

    def by_year(self):
        year_dict = defaultdict(list)
        for talk in self.all():
            talk_year = int(talk.year)
            year_dict[talk_year].append(talk)
        return year_dict

    def only_current(self):
        """Retrieves the talks related to the current year, which is read from pelican settings."""
        current_year = self.settings.get('PYGRUNN_YEAR', datetime.now().year)
        current_year = int(current_year)
        return [talk for talk in self.all() if int(talk.year) == current_year]


class TalkGenerator(Generator):
    """Pelican generator that:
      - parses talk files
      - puts those talks in a TalkManager
      - puts the TalkManager into global template context

    """
    def __init__(self, *args, **kwargs):
        super(TalkGenerator, self).__init__(*args, **kwargs)
        self.talk_manager = TalkManager(self.settings)

    def generate_context(self):
        for talk_file in self.get_files(self.settings.get('TALKS_DIR', 'talks'),
                                        exclude=self.settings.get('TALKS_EXCLUDES', '')):
            try:
                talk = self.readers.read_file(
                    base_path=self.path, path=talk_file, content_class=Talk,
                    context=self.context
                )

            except Exception as e:
                logger.warning("Could not process talk {0}\n{1}".format(talk_file, e))
                continue

            if is_valid_content(talk, talk_file):
                self.talk_manager.add(talk)
            else:
                logger.debug("A talk file is NOT VALID content: {0},{1}".format(talk, talk_file))

        self._update_context(('talk_manager',))
        self.context['talk_manager'] = self.talk_manager


def get_generators(generators):
    """Helper function for Pelican to get generator."""
    return TalkGenerator


def register():
    """Starting point for Pelican to instantiate plugin."""
    signals.get_generators.connect(get_generators)
