# List available recipes
default:
    @just --list

# Serve the site locally with live reload
serve:
    open http://127.0.0.1:1111/
    zola serve --drafts

# Build the site for production
build:
    zola build

# Check for broken links and other issues
check:
    zola check

# Run build and check to ensure we can commit the changes
precommit: check build
