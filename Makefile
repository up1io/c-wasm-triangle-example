build:
	clang --target=wasm32 -nostdlib -Wl,--no-entry -Wl,--export-all -o static/main.wasm main.c