#!/usr/bin/env bash
set -euo pipefail

cat > .crowdin-temp.yml <<'INNER_EOF'
project_id_env: CROWDIN_PROJECT_ID
api_token_env: CROWDIN_PERSONAL_TOKEN
base_path: .
preserve_hierarchy: true

files:
  - source: /assets/nice_actions/lang/en_us.json
    dest: /Nice Actions.json
    translation: /assets/nice_actions/lang/%locale_with_underscore%.json
INNER_EOF
