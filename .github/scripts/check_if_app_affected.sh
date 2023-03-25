#!/bin/sh

check_dependency() {
  package_name=$1
  app_dir=$2
  grep -q "$package_name:" "$app_dir/pubspec.yaml"
}

app_affected() {
  app_name=$1
  if git diff HEAD~ --name-only | grep -q "apps/$app_name/"; then
    return 0
  fi

  for package in account_settings auth clubs common events payments rewards tickets translations; do
    if git diff HEAD~ --name-only | grep -q "packages/$package/"; then
      check_dependency "$package" "apps/$app_name" && return 0
    fi
  done

  return 1
}
