# -*- coding: utf-8 -*-
from __future__ import unicode_literals

import logging

from pelican.contents import Content, is_valid_content
from pelican.generators import Generator
from pelican import signals


logger = logging.getLogger(__name__)


class Speaker(Content):
    """Wrapper class for Speaker content to live in."""
    mandatory_properties = ('slug',)
    default_template = 'page'


class SpeakerManager(object):
    """Manager for easy access to speaker objects in templates."""
    def __init__(self):
        self.contents = {}

    def add(self, content):
        if not isinstance(content, Speaker):
            raise Exception("This manager only accepts 'Speaker' objects")

        self.contents[content.slug] = content

    def get(self, slug):
        content = self.contents.get(slug, "")
        return content

    def all(self):
        return self.contents.values()


class SpeakerGenerator(Generator):
    """Pelican generator that:
      - parses talk files
      - puts those talks in a SpeakerManager
      - puts the TalkManager into global template context

    """
    def __init__(self, *args, **kwargs):
        self.speaker_manager = SpeakerManager()
        super(SpeakerGenerator, self).__init__(*args, **kwargs)

    def generate_context(self):
        for speaker_file in self.get_files(self.settings.get('SPEAKER_DIR', 'speakers'),
                                           exclude=self.settings.get('SPEAKER_EXCLUDES', '')):
            try:
                speaker = self.readers.read_file(
                    base_path=self.path, path=speaker_file, content_class=Speaker,
                    context=self.context
                )

            except Exception as e:
                logger.warning("Could not process speaker {0}\n{1}".format(speaker_file, e))
                continue

            if is_valid_content(speaker, speaker_file):
                self.speaker_manager.add(speaker)
            else:
                logger.debug("A speaker file is NOT VALID content: {0},{1}".format(speaker, speaker_file))

        self._update_context(('speaker_manager',))
        self.context['speaker_manager'] = self.speaker_manager


def get_generators(generators):
    """Helper function for Pelican to get generator."""
    return SpeakerGenerator


def register():
    """Starting point for Pelican to instantiate plugin."""
    signals.get_generators.connect(get_generators)
