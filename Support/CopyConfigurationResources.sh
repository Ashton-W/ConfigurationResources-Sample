# https://gist.github.com/Ashton-W/a47ec8b128ecbe470632

RESOURCES_PATH="${RESOURCES_PATH:-$SOURCE_ROOT/Resources}"

#
copy_common_resources() {
  cp -vRf "$RESOURCES_PATH/" "$CODESIGNING_FOLDER_PATH/"
}

#
copy_config_resources() {
  local config_path="$RESOURCES_PATH-$CONFIGURATION/"
  if [ -d "$config_path" ]; then
    cp -vRf "$config_path" "$CODESIGNING_FOLDER_PATH/"
  fi
}

copy_common_resources && copy_config_resources
