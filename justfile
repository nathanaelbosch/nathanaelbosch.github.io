default:
    just --list

check-links: build
    lychee --root-dir {{justfile_directory()}}/__site __site

build:
    julia +1.11 --startup-file=no --project=. -e "using Franklin; serve(single=true)"

serve:
    julia +1.11 --startup-file=no --project=. -e "using Franklin; serve()"
