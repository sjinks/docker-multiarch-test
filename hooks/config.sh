#!/bin/bash

ARCHS="amd64 i386 arm64 arm/v6 arm/v7 ppc64le s390x"
declare -A base_image_prefix_map=( ["amd64"]=""       ["i386"]="i386/" ["arm64"]="arm64v8/" ["arm/v6"]="arm32v6/" ["arm/v7"]="arm32v7/" ["ppc64le"]="ppc64le/" ["s390x"]="s390x/" )
declare -A docker_qemu_arch_map=(  ["amd64"]="x86_64" ["i386"]="i386"  ["arm64"]="aarch64"  ["arm/v6"]="arm"      ["arm/v7"]="arm"      ["ppc64le"]="ppc64le"  ["s390x"]="s390x"  )
declare -A arch_to_manifest_map=(  ["amd64"]="amd64"  ["i386"]="386"   ["arm64"]="arm64"    ["arm/v6"]="arm"      ["arm/v7"]="arm"      ["ppc64le"]="ppc64le"  ["s390x"]="s390x"  )
declare -A arch_to_variant_map=(   ["amd64"]=""       ["i386"]=""      ["arm64"]=""         ["arm/v6"]="v6"       ["arm/v7"]="v7"       ["ppc64le"]=""         ["s390x"]=""       )