import os, time, subprocess, csv

class analyzing_result:
    path_file, file_name, time, time_closure, time_jerry, size, size_closure, decreased_time, reduced_size, debug = '', '', 0, 0, 0, 0, 0, 0, 0, False
    dir = os.path.dirname(__file__)
    path_v8 = os.path.join(dir, 'v8_x64/shell') 
    path_closure = os.path.join(dir, 'closure_compiler.jar')
    path_result_folder = os.path.join(dir, 'results')
    
    def __init__(self, path_file, level):
        self.path_file = path_file
        self.file_name = os.path.basename(path_file)
        self.level = level
        # self.execut_scripts()
        
       
    def execut_scripts_closure(self, csv_writer):
        
        # get bytecode without any optimizations and calculating number of commands 
        path_file1 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_opcodes.txt'
        cmd = self.path_v8 + ' --print_code '+ self.path_file + ' > ' + path_file1
        
        start = time.time()
        r1 = subprocess.call(cmd, shell=True, stderr=subprocess.STDOUT)
        end = time.time()
        
        self.time = round((end - start) * 1000, 2)
        self.size = self.get_file_len(path_file1)
    
        # get bytecode using Google Closure as an optimizing compiler and calculating number of commands    
        path_file2 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_optimized_js.js'
        path_file3 = self.path_result_folder + '/' + os.path.splitext(self.file_name)[0] + '_opcodes_optimized.txt'
        
        cmd_closure = 'java -jar ' + self.path_closure + ' --compilation_level ' + self.level + ' --js ' + self.path_file + ' --js_output_file ' + path_file2
        cmd = self.path_v8 + ' --print_code '+ path_file2+' > ' + path_file3
        
        
        start1 = time.time()
        r3 = subprocess.call(cmd_closure, shell=True, stderr=subprocess.STDOUT)
        start2 = time.time()
        r4 = subprocess.call(cmd, shell=True, stderr=subprocess.STDOUT)
        end = time.time()
        
        #time.sleep(1)
        self.time_closure = round((end - start1) * 1000, 2)
        self.time_jerry = round((end - start2) * 1000, 2)
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
        
        count_opcodes = 0
        id_start_code = 0
        for id,val in enumerate(arr_rows):
            if '--- Code ---' in val:
                id_start_code = id
                count_opcodes = len(arr_rows[id_start_code:])
                break  
            
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
        
        
        
        
        
        
        
        
        
        
