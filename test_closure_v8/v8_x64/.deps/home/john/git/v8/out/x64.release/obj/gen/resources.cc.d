cmd_/home/john/git/v8/out/x64.release/obj/gen/resources.cc := LD_LIBRARY_PATH=/home/john/git/v8/out/x64.release/lib.host:/home/john/git/v8/out/x64.release/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd ../test/cctest; mkdir -p /home/john/git/v8/out/x64.release/obj/gen; python ../../tools/js2c.py "/home/john/git/v8/out/x64.release/obj/gen/resources.cc" TEST ../../tools/splaytree.js ../../tools/codemap.js ../../tools/csvparser.js ../../tools/consarray.js ../../tools/profile.js ../../tools/profile_view.js ../../tools/logreader.js log-eq-of-logging-and-traversal.js