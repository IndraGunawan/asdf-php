#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/php/php-src"
TOOL_NAME="php"
TOOL_TEST="bin/php --version"

cached_tags=""

fail() {
	echo -e "asdf-$TOOL_NAME: $*" >&2
	exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if php is not hosted on GitHub releases.
if [ -n "${GITHUB_API_TOKEN:-}" ]; then
	curl_opts=("${curl_opts[@]}" -H "Authorization: token $GITHUB_API_TOKEN")
fi

list_all_versions() {
	if [ -z "$cached_tags" ]; then
		cached_tags=$(
			git -c 'versionsort.suffix=alpha' -c 'versionsort.suffix=beta' -c 'versionsort.suffix=RC' ls-remote --tags --refs --sort='v:refname' --quiet "$GH_REPO" 'php-*' |
				awk '{print $2}' |
				sed 's/refs\/tags\/php-//'
		)
	fi

	echo "$cached_tags"
}

list_stable_versions_only() {
	list_all_versions | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$'
}

get_full_version() {
	local version fullversion
	version="$1"
	if list_all_versions | grep -qx "$version"; then
		fullversion="$version"
	else
		# if no exact version matches then try to find latest of each version group
		fullversion="$(list_stable_versions_only | grep -E "^$version" | tail -n1)"
	fi

	echo "$fullversion"
}

download_release() {
	local version filename url
	version="$1"
	filename="$2"

	if [ -f "$filename" ]; then
		echo "* Removing existing $filename"
		rm "$filename"
	fi

	url="$GH_REPO/archive/refs/tags/php-${version}.tar.gz"

	echo "* Downloading $TOOL_NAME release $version..."
	curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}
