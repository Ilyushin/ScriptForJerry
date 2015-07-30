import os, time, subprocess

class analyzing_result:
    path_file, file_name, time, time_closure, size, size_closure = '','',0,0,0,0
    dir = os.path.dirname(__file__)
    path_jerry = os.path.join(dir, 'jerry')
    path_closure = os.path.join(dir, 'closure_compiler.jar')
    path_result_folder = os.path.join(dir, 'results')
    
    def __init__(self, path_file, level):
        self.path_file = path_file
        self.file_name = os.path.basename(path_file)
        self.level = level
        self.execut_scripts()
        
       
    def execut_scripts(self):
        
        #get bytecode without any optimizations 
        path_file1 = self.path_result_folder+'/'+os.path.splitext(self.file_name)[0]+'_opcodes.txt' 
        cmd = self.path_jerry+' '+self.path_file+' --show-opcodes > '+path_file1
        
        start = time.time()
        p1 = subprocess.check_call(cmd, shell=True)
        end = time.time()
        
        self.time = (end - start) * 1000
        self.size = self.get_file_len(path_file1)
    
        #get bytecode using Google Closure as an optimizing compiler    
        path_file2 = self.path_result_folder+'/'+os.path.splitext(self.file_name)[0]+'_optimized_js.js'
        path_file3 = self.path_result_folder+'/'+os.path.splitext(self.file_name)[0]+'_opcodes_optimized.txt'
        cmd_closure = 'java -jar '+self.path_closure+' --compilation_level '+self.level+' --js '+self.path_file+' --js_output_file '+path_file2
        cmd = self.path_jerry+' '+path_file2+' --show-opcodes > '+path_file3
        
        start = time.time()
        p2 = subprocess.check_call(cmd_closure, shell=True)
        p3 = subprocess.check_call(cmd, shell=True)
        end = time.time()
        
        self.time_closure = (end - start) * 1000
        self.size_closure = self.get_file_len(path_file3)
        
    #calculate number of rows   
    def get_file_len(self, path_file):
        file_sourse = open(path_file, "r")
        count_opcodes = len(file_sourse.read().split('\n'))
        file_sourse.close()
        return count_opcodes    
         