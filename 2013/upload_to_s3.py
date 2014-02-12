"""
Upload the pygrunn website directory to AWS S3.

Supply the aws_access_key_id and aws_secret_access_key as commandline arguments
or enter them when requested.
"""

import os
import sys
import boto
from boto.s3.key import Key


if len(sys.argv) == 3:
    _, aws_access_key_id, aws_secret_access_key = sys.argv
else:
    aws_access_key_id = raw_input('Enter access key ID:')
    aws_secret_access_key = raw_input('Enter secret access key:')

bucket = 'www.pygrunn.org'
srcDir = 'output'

c = boto.connect_s3(aws_access_key_id, aws_secret_access_key)
b = c.get_bucket(bucket)
k = Key(b)

for path, dir, files in os.walk(srcDir):
    for file in files:
        k.key = os.path.relpath(os.path.join(path, file), srcDir)
        print 'Uploading file: ' + os.path.join(path, file)
        k.set_contents_from_filename(os.path.join(path, file))
        b.set_acl('public-read', k.key)
