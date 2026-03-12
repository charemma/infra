builder_dir := "nix-builder"

_default:
    @just --list

# Initialize project (install deps, init stack, set secrets)
init:
    cd {{ builder_dir }} && npm install
    @echo "Run: cd {{ builder_dir }} && pulumi stack init dev && pulumi config set hcloud:token --secret"

# Spin up all configured builders
up:
    cd {{ builder_dir }} && pulumi up --yes

# Tear down all builders
down:
    cd {{ builder_dir }} && pulumi destroy --yes

# Show running builders as JSON
status:
    @cd {{ builder_dir }} && pulumi stack output output 2>/dev/null \
        | jq . \
        || echo "[]"

# Review changes without applying
plan:
    cd {{ builder_dir }} && pulumi preview
