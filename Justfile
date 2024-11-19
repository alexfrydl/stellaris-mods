STELLARIS_MOD_PATH := "/mnt/c/Users/Lexi/Documents/Paradox Interactive/Stellaris/mod"
STELLARIS_MOD_PATH_WIN := "C:/Users/Lexi/Documents/Paradox Interactive/Stellaris/mod"

ready:
  rm -rf "{{STELLARIS_MOD_PATH}}/lxa-crowded-clusters*"
  cp -r lxa-crowded-clusters "{{STELLARIS_MOD_PATH}}"
  cp -f lxa-crowded-clusters/descriptor.mod "{{STELLARIS_MOD_PATH}}/lxa-crowded-clusters.mod"
  echo "\npath=\"{{STELLARIS_MOD_PATH_WIN}}/lxa-crowded-clusters\"" >> "{{STELLARIS_MOD_PATH}}/lxa-crowded-clusters.mod"