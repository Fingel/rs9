dev:
    cargo run --release

web:
    trunk serve -a 0.0.0.0

test:
    cargo test

check:
    cargo check --quiet --workspace --all-targets
    cargo check --quiet --workspace --all-features --lib --target wasm32-unknown-unknown
    cargo fmt --all -- --check
    cargo clippy --quiet --workspace --all-targets --all-features --  -D warnings -W clippy::all
    cargo test --quiet --workspace --all-targets --all-features
    cargo test --quiet --workspace --doc
    trunk build
