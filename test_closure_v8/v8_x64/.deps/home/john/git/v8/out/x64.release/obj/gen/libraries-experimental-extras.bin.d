cmd_/home/john/git/v8/out/x64.release/obj/gen/libraries-experimental-extras.bin := LD_LIBRARY_PATH=/home/john/git/v8/out/x64.release/lib.host:/home/john/git/v8/out/x64.release/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd ../tools/gyp; mkdir -p /home/john/git/v8/out/x64.release/obj/gen; python ../../tools/js2c.py "/home/john/git/v8/out/x64.release/obj/gen/experimental-extras-libraries.cc" EXPERIMENTAL_EXTRAS ../../test/cctest/test-experimental-extra.js --startup_blob "/home/john/git/v8/out/x64.release/obj/gen/libraries-experimental-extras.bin" --nojs
