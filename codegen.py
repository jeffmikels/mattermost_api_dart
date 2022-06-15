#!/usr/bin/env python3

# OPENAPI_GENERATOR_VERSION=6.0.0

import subprocess
import os

OUTPUT = 'mattermost_api_generated'
INPUT = 'mattermost-swagger.json'
CONFIG = 'openapi_config.yaml'


class Replacement:
  def __init__(self, fn, search, replace):
    self.fn = fn
    self.search = search
    self.replace = replace


def dogen(use_local=True, post_process=False):
  args = ['generate', '-i', INPUT, '-g', 'dart', '-c', CONFIG, '-o', OUTPUT]

  if post_process:
    os.environ['DART_POST_PROCESS_FILE'] = 'dart format'
    args.append('--enable-post-process-file')

  # build and test the generator with ./mvnw package
  if use_local:
    cmd = ['java', '-jar', '/Users/Jeff/Development/@Dart/openapi-working/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar']
  else:
    cmd = ['openapi-generator']

  cmd.extend(args)
  res = subprocess.run(cmd, capture_output=False)
  return res


print('removing previously generated files')
os.system(f'rm -rf mattermost_api_generated/*')
os.system(f'rm -rf lib/generated/*')
os.system(f'rm -rf test/generated/*')
os.system(f'rm -rf doc/*')

dogen()
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
    # # ignore the second ldap file
    # if 'ldap_api.dart' in line:
    #   if usedldap:
    #     continue
    #   usedldap = True

    # # ignore the incorrect ldap api getter
    # if 'get lDAP' in line:
    #   continue

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
        os.path.join(OUTPUT, 'lib', 'model/mm_post_list_with_search_matches.dart'),
        ''': mapCastOfType<String, List>(json, r'matches'),''',
        ''': mapCastOfType<String, List<String>>(json, r'matches')!,'''
    ),
    Replacement(
        os.path.join(OUTPUT, 'lib', 'model/mm_open_interactive_dialog_request_dialog.dart'),
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
os.system(f'rsync -av "{doc}/" doc/')

readme = os.path.join(OUTPUT, 'GENERATED_README.md')
os.system(f'cp "{readme}" GENERATED_README.md')

os.system(f'dart format --line-length 120 lib/generated/')
