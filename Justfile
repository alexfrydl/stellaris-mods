set dotenv-load

mod_path := env('STELLARIS_MOD_PATH')
mod_path_win := shell('wslpath -am "$1"', mod_path)

ready:
  #!/bin/fish

  for descriptor in (ls */descriptor.mod)
    set -l name (dirname $descriptor)

    echo "Copying $name…"

    rm -rf "{{mod_path}}/$name"*
    cp -r "$name" "{{mod_path}}"
    cp -f "$descriptor" "{{mod_path}}/$name.mod"
    echo "\npath=\"{{mod_path_win}}/$name\"" >> "{{mod_path}}/$name.mod"
  end