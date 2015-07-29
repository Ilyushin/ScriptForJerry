import subprocess

#get bytecode without any optimizations
cmd = '/home/john/git/jerryscript/build/bin/debug.linux/jerry /home/john/workspace/ScriptForJerry/test.js --show-opcodes > /home/john/Documents/opcodes_for_test_js.txt'
p = subprocess.Popen(cmd, shell=True)

#get bytecode using Google Closure as an optimizing compiler
cmd_closure = 'java -jar /home/john/workspace/ScriptForJerry/closure_compiler.jar --js /home/john/workspace/ScriptForJerry/test.js --js_output_file /home/john/workspace/ScriptForJerry/test_compiler.js'
p = subprocess.Popen(cmd_closure, shell=True)

cmd = '/home/john/git/jerryscript/build/bin/debug.linux/jerry /home/john/workspace/ScriptForJerry/test_compiler.js --show-opcodes > /home/john/Documents/opcodes_for_test_compiler_js.txt'
p = subprocess.Popen(cmd, shell=True)
