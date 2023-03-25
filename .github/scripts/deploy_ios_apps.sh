#!/bin/sh

. ./check_if_app_affected.sh

deploy_ios_app() {
  app_name=$1

  cd "apps/$app_name/ios" || exit
  eval "fastlane deploy_to_testflight"
  cd ../.. || exit
}

for app_name in tonight tonight_partners tonight_scanner; do
  if app_affected "$app_name"; then
      deploy_ios_app "$app_name"
  else
      echo "No relevant changes detected for $app_name. Skipping iOS deployment."
  fi
done