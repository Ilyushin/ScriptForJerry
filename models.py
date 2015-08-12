import os, time, subprocess, csv

class analyzing_result:
    path_file, file_name, time, time_closure, time_jerry, size, size_closure, decreased_time, reduced_size, debug = '', '', 0, 0, 0, 0, 0, 0, 0, False
    dir = os.path.dirname(__file__)
    path_jerry_debug = os.path.join(dir, 'jerry_debug') 
    path_jerry = os.path.join(dir, 'jerry')
    path_closure = os.path.join(dir, 'closure_compiler.jar')
    path_result_folder = os.path.join(dir, 'results')
    
    def __init__(self, path_file, level):
        self.path_file = path_file
        self.file_name = os.path.basename(path_file)
        self.level = level
        # self.execut_scripts()
        
       
    def execut_scripts_closure(self, csv_writer):
        
        # get bytecode without any optimizations 
        cmd = self.path_jerry + ' ' + self.path_file
        
        start = time.time()
        r1 = subprocess.call(cmd, shell=True, stderr=subprocess.STDOUT)
        end = time.time()
        
        self.time = round((end - start) * 1000, 2)
        
        # for calculating number of commands
        path_file1 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_opcodes.txt'  
        cmd = self.path_jerry_debug + ' ' + self.path_file + ' --show-opcodes > ' + path_file1
        r2 = subprocess.call(cmd, shell=True, stderr=subprocess.STDOUT)
        self.size = self.get_file_len(path_file1)
    
        # get bytecode using Google Closure as an optimizing compiler    
        path_file2 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_optimized_js.js'
        path_file3 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_opcodes_optimized.txt'
        
        cmd_closure = 'java -jar ' + self.path_closure + ' --compilation_level ' + self.level + ' --js ' + self.path_file + ' --js_output_file ' + path_file2
        cmd = self.path_jerry + ' ' + path_file2
        
        
        start1 = time.time()
        r3 = subprocess.call(cmd_closure, shell=True)
        start2 = time.time()
        r4 = subprocess.call(cmd, shell=True)
        end = time.time()
        
        self.time_closure = round((end - start1) * 1000, 2)
        self.time_jerry = round((end - start2) * 1000, 2)
        
        # for calculating number of commands
        cmd = self.path_jerry_debug + ' ' + path_file2 + ' --show-opcodes > ' + path_file3
        r5 = subprocess.call(cmd, shell=True)
        self.size_closure = self.get_file_len(path_file3) 
        
        diff_size = self.size - self.size_closure 
        if diff_size > 0:
            self.reduced_size = round((diff_size * 100) / self.size, 2) 
            
        diff_time = self.time - self.time_jerry
        self.decreased_time = round((diff_time * 100) / self.time, 2)
        
        self.save_result(csv_writer)
        
    # calculate number of rows   
    def get_file_len(self, path_file):
        
        file_sourse = open(path_file, "r")
        
        count_opcodes = 0
        arr_rows = file_sourse.read().split('\n')
        last_row = arr_rows[len(arr_rows) - 2].strip()
        try:
            count_opcodes = int(last_row[:last_row.index(':')])
        except ValueError:
            print ValueError
            print last_row
        
               
        file_sourse.close()
        return count_opcodes    
    
    
    def save_result(self, csv_writer):
        newStr = []
        newStr.append(self.file_name)
        newStr.append(',' + str(self.time))
        newStr.append(',' + str(self.time_closure))
        newStr.append(',' + str(self.time_jerry))
        newStr.append(',' + str(self.size))
        newStr.append(',' + str(self.size_closure))
        newStr.append(',' + str(self.decreased_time))
        newStr.append(',' + str(self.reduced_size))
                
        csv_writer.writerow(newStr)
        
        
        
        
        
        
        
        
        
        
