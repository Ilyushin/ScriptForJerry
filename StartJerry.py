import subprocess, os
 
path_js = raw_input("Enter the path to a JavaScript file:")

dir = os.path.dirname(__file__)
path_jerry = os.path.join(dir, 'jerry')
path_closure = os.path.join(dir, 'closure_compiler.jar')
path_result_folder = os.path.join(dir, 'results')

#get bytecode without any optimizations
cmd = path_jerry+' '+path_js+' --show-opcodes > '+path_result_folder+'/opcodes.txt'
p = subprocess.Popen(cmd, shell=True)

#get bytecode using Google Closure as an optimizing compiler
cmd_closure = 'java -jar '+path_closure+' --js '+path_js+' --js_output_file '+path_result_folder+'/optimized_js.js'
p = subprocess.Popen(cmd_closure, shell=True)

cmd = path_jerry+' '+path_result_folder+'/optimized_js.js --show-opcodes > '+path_result_folder+'/opcodes_optimized.txt'
p = subprocess.Popen(cmd, shell=True)

count_opcodes = 0
count_opcodes_opt = 0
with open (path_result_folder+'/opcodes.txt', "r") as file_opt:
    count_opcodes = len(file_opt.read().split('\n'))
 
with open (path_result_folder+'/opcodes_optimized.txt', "r") as file_opt:
    count_opcodes_opt = len(file_opt.read().split('\n'))  

print 'Without a compiler:'+str(count_opcodes) 
print 'With a compiler:'+str(count_opcodes_opt)

