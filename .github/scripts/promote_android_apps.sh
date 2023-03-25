#!/bin/sh

base_sha=$1
head_sha=$2

.  .github/scripts/check_if_app_affected.sh

promote_android_app() {
  app_name=$1

  cd "apps/$app_name/android" || exit
  eval "fastlane promote_to_production"
  cd ../.. || exit
}

for app_name in tonight tonight_partners tonight_scanner; do
  if app_affected "$app_name" "$base_sha" "$head_sha"; then
      promote_android_app "$app_name"
  else
      echo "No relevant changes detected for $app_name. Skipping Android promotion."
  fi
done