#!/usr/bin/env bash
set -euo pipefail

build_temp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "${build_temp_dir}"
}
trap cleanup EXIT

export HUGO_CACHEDIR="${PWD}/.cache/hugo"

if [[ -f "go.mod" ]]; then
  : "${GO_VERSION:=1.21.5}"
  mkdir -p "${HOME}/.local"
  curl -sfL --output-dir "${build_temp_dir}" -O "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
  tar -C "${HOME}/.local" -xf "${build_temp_dir}/go${GO_VERSION}.linux-amd64.tar.gz"
  export PATH="${HOME}/.local/go/bin:${PATH}"
fi

corepack enable
pnpm install --frozen-lockfile
pnpm run build
pnpm run search:index
