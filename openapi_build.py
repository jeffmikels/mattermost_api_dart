#!/usr/bin/env python3

# OPENAPI_GENERATOR_VERSION=6.0.0

import subprocess
import os


class Replacement:
  def __init__(self, fn, search, replace):
    self.fn = fn
    self.search = search
    self.replace = replace


OUTPUT = '../mattermost_api_test'
OUTPUT = 'mattermost_api_generated'
INPUT = 'mattermost-swagger.json'
CONFIG = 'openapi_config.yaml'

GENERATOR = 'openapi-generator'
GENERATOR = 'java -jar /Users/Jeff/Development/@Dart/openapi-working/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar'

print('removing previously generated files')
os.system(f'rm -rf mattermost_api_generated/*')
os.system(f'rm -rf lib/generated/*')
os.system(f'rm -rf test/generated/*')
os.system(f'rm -rf doc/generated/*')


# we used to need --skip-validate-spec
# res = subprocess.run(['openapi-generator', 'generate', '-i', INPUT,
#                      '-g', 'dart', '-c', CONFIG, '-o', OUTPUT])
res = subprocess.run(['java', '-jar', '/Users/Jeff/Development/@Dart/openapi-working/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar',
                     'generate', '-i', INPUT, '-g', 'dart', '-c', CONFIG, '-o', OUTPUT])

towrite = []
apifn = os.path.join(OUTPUT, 'lib', 'api.dart')
print()
print()
print(f'fixing {apifn}')
with open(apifn, 'r') as apifile:
  orig = apifile.read()

  usedldap = False
  addedparts = False

  for line in orig.split('\n'):
    # ignore the second ldap
    if 'ldap_api.dart' in line:
      if usedldap:
        continue
      usedldap = True

    towrite.append(line)

towrite = '\n'.join(towrite)

if len(towrite) > 0:
  with open(apifn, 'w') as apifile:
    apifile.write(towrite)


print()
print()
print('performing replacements')
replacements = [
    # users_api replacements not needed with my openapi build
    # Replacement(
    #     os.path.join(OUTPUT, 'lib', 'api/mattermost_users_api.dart'),
    #     '''num? ,''',
    #     '''num? timestamp,'''
    # ),
    # Replacement(
    #     os.path.join(OUTPUT, 'lib', 'api/mattermost_users_api.dart'),
    #     '''userId,  : ,''',
    #     '''userId, timestamp: timestamp,'''
    # ),
    # Replacement(
    #     os.path.join(OUTPUT, 'lib', 'api/mattermost_users_api.dart'),
    #     '''if ( != null) {''',
    #     '''if ( timestamp != null) {'''
    # ),
    # Replacement(
    #     os.path.join(OUTPUT, 'lib', 'api/mattermost_users_api.dart'),
    #     '''queryParams.addAll(_queryParams('', '_', ));''',
    #     '''queryParams.addAll(_queryParams('', '_', timestamp ));'''
    # ),

    # no longer needed with my new openapi build
    # Replacement(
    #     os.path.join(OUTPUT, 'lib', 'api/mattermost_groups_api.dart'),
    #     '.cast<Map>()',
    #     '.cast<Map<String, List<GroupWithSchemeAdmin>>>()'
    # ),

    # still needed for some reason
    Replacement(
        os.path.join(OUTPUT, 'lib', 'model/mattermost_post_list_with_search_matches.dart'),
        ''': mapCastOfType<String, List>(json, r'matches'),''',
        ''': mapCastOfType<String, List<String>>(json, r'matches')!,'''
    ),
    Replacement(
        os.path.join(OUTPUT, 'lib', 'model/mattermost_open_interactive_dialog_request_dialog.dart'),
        '''elements: Map.listFromJson(json[r'elements'])!,''',
        '''elements: json[r'elements'] ?? const [],'''
    ),
]

for rep in replacements:
  data = open(rep.fn, 'r').read()
  data = data.replace(rep.search, rep.replace)
  open(rep.fn, 'w').write(data)


print('finally... copying files to final location')

lib = os.path.join(OUTPUT, 'lib')
os.system(f'rsync -av "{lib}/" lib/generated/')

test = os.path.join(OUTPUT, 'test')
os.system(f'rsync -av "{test}/" test/generated/')

doc = os.path.join(OUTPUT, 'doc')
os.system(f'rsync -av "{doc}/" doc/generated/')

readme = os.path.join(OUTPUT, 'README.md')
os.system(f'cp "{readme}" GENERATED_README.md')
