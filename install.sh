#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skills_root="${CODEX_HOME:-$HOME/.codex}/skills"
requested="${1:-all}"

case "$requested" in
  all) names=(guided-webapp-builder reference-driven-web-design) ;;
  guided-webapp-builder|reference-driven-web-design) names=("$requested") ;;
  *)
    echo "Usage: bash install.sh [all|guided-webapp-builder|reference-driven-web-design]" >&2
    exit 2
    ;;
esac

mkdir -p "$skills_root"

for name in "${names[@]}"; do
  source_dir="$repo_root/skills/$name"
  destination="$skills_root/$name"

  if [[ ! -f "$source_dir/SKILL.md" ]]; then
    echo "Skill source not found: $source_dir" >&2
    exit 1
  fi

  mkdir -p "$destination"
  cp -R "$source_dir/." "$destination/"
  echo "Installed: $name -> $destination"
done

echo "Restart Codex to refresh the skill list."
