set dotenv-load

mod_path := env('STELLARIS_MOD_PATH')
mod_path_win := shell('wslpath -m "$1"', mod_path)

@ready:
  rm -rf "{{mod_path}}/lxa-crowded-clusters*"
  cp -r lxa-crowded-clusters "{{mod_path}}"
  cp -f lxa-crowded-clusters/descriptor.mod "{{mod_path}}/lxa-crowded-clusters.mod"
  echo "\npath=\"{{mod_path_win}}/lxa-crowded-clusters\"" >> "{{mod_path}}/lxa-crowded-clusters.mod"