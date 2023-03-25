#!/bin/sh

. .github/scripts/app_affected.sh

deploy_android_app() {
  app_name=$1

  cd "apps/$app_name/android" || exit
  eval "fastlane deploy_to_play_store_internal"
  cd ../.. || exit
}

for app_name in tonight tonight_partners tonight_scanner; do
  if app_affected "$app_name"; then
      deploy_android_app "$app_name"
  else
      echo "No relevant changes detected for $app_name. Skipping Android deployment."
  fi
done