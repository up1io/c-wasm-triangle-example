build:
	# /opt/wasi-sdk/bin/clang --target=wasm32-wasi --sysroot=/opt/wasi-sdk/share/wasi-sysroot -O2 main.c -o ./static/main.wasm
	/opt/wasi-sdk/bin/clang --target=wasm32 -O2 -nostdlib -Wl,--no-entry -Wl,--export-all -o ./static/main.wasm main.c

serve:
	cd static && python3 -m http.server 8080