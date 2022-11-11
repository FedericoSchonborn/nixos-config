@_default:
    just --list

# Build one or more packages.
@build +PACKAGES:
    for package in {{ PACKAGES }}; do \
        nix build --print-build-logs ".#${package}"; \
    done

# Format Nix files.
@format:
    nix fmt

# Run checks on this Flake.
@check:
    nix flake check --no-build
