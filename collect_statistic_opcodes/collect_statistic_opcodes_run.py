#!/usr/bin/python2.7
import sys, subprocess, os, csv,subprocess, gzip, threading

dir = os.path.dirname(__file__)

#set parameters
path_jerry = os.path.join(dir, 'jerry')

#read path to tests from command prompt
if len(sys.argv) > 1:
    path_tests = sys.argv[1]
else:
    path_tests = os.path.join(dir,'test_files')

#read path to a result folder from command prompt   
if len(sys.argv) > 2:
    path_result_folder = sys.argv[2]
    if os.path.isfile(path_result_folder):
        print "Wrong the result folder!"
        sys.exit()
else:   
    path_result_folder = os.path.join(dir, 'results')
    
path_bytecode = os.path.join(dir, 'bytecode')

def get_name_opcodes_dict(file_name):
    file_sourse = open(path_bytecode + '/' + file_name + '_opcodes.txt', "r")

    dict_op = {}
    arr_rows = file_sourse.read().split('\n')
    for row in arr_rows:
        if row[:2] == '//':
            continue
        arr_row = row.split(' ') 
        
        data = [i for i in arr_row if i.strip()]
        
        if len(data) < 2 or  not ':' in data[0]: continue
         
        id = data[0].replace(':','').strip()       
        dict_op.setdefault(id)
        
        dict_op[id] = data[1]      
                   
    file_sourse.close()
    return dict_op 
 
def process_data(path): 
    with open(path, 'rb') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter=',')           
        #row of the dict consist of following fields:
        # - id an opcode in bytecode
        # - number of calls 
        # - min execution time
        # - max execution time
        # - average execution time
        
        result_dict = {}
        for row in csv_reader:
            l = len(row)
            if l != 2: continue           
                                 
            id = int(row[0])-1    
            result_dict.setdefault(id,[0,0,0,0])
            #number
            result_dict[id][0] += 1
            #min
            if result_dict[id][1] == 0 or result_dict[id][1] > float(row[1]):
               result_dict[id][1] = float(row[1]) 
            
            #max
            if result_dict[id][2] < float(row[1]):
                result_dict[id][2] = float(row[1])
            #average
            result_dict[id][3] += float(row[1])
       
        #get name list of opcodes
        dict_opcodes = get_name_opcodes_dict(os.path.splitext(os.path.basename(path))[0])
        
        if len(dict_opcodes) != 0: 
            csvfile_an = open(path_result_folder+'/'+os.path.splitext(os.path.basename(path))[0]+'_analyze.csv', 'w+')
            csv_writer = csv.writer(csvfile_an, delimiter=' ', quoting=csv.QUOTE_NONE, escapechar=' ', quotechar='')
            csv_writer.writerow(['Name',',Id',',Number of calls',',Min time',',Max time',',Average time'])
            for key, value in result_dict.iteritems():
                newStr = []
                newStr.append(dict_opcodes[str(key)])
                newStr.append(',' + str(key))
                newStr.append(',' + str(value[0]))
                newStr.append(',' + '{0:.6f}'.format(value[1]))
                newStr.append(',' + '{0:.6f}'.format(value[2]))
                if value[1] == 0:
                    newStr.append(',' + '{0:.15f}'.format(value[2])) 
                else:
                    newStr.append(',' + '{0:.15f}'.format(value[2]/value[0]))
                
                csv_writer.writerow(newStr)
            csvfile_an.close()
        else:
            print 'List of opcodes is empty'
        print str(len(dict_opcodes))+','+str(len(result_dict))+','+ path
   

def compress_file(path, path_ar):
    
    with open(path, 'rb') as f_in:
        with gzip.open(path_ar, 'wb') as f_out:
            f_out.writelines(f_in)
            os.remove(path)
            print 'remove - '+path
    

def analyze_result_start(): 
    
    results_path = []
    for fn in os.listdir(path_result_folder):
        if fn.lower().endswith('.csv') and not "_analyze" in fn.lower() :
            results_path.append(path_result_folder+'/'+fn)
               
    if results_path:
        threads = []
        for path in results_path:
            threads.append(threading.Thread(target=process_data, args=(path,))) 
         
        # Start all threads
        for t in threads:
            t.start()
    
        # Wait for all of them to finish
        for t in threads:
            t.join()    
        print 'success' 
        
    print '********Compress files*****************' 
    
    threads = []
    for fn in os.listdir(path_result_folder):
        if fn.lower().endswith('.csv'):
            path = path_result_folder+'/'+fn
            path_ar = path_result_folder+'/'+fn+'.gz'
            threads.append(threading.Thread(target=compress_file, args=(path, path_ar,)))
    
    if len(threads) > 0:
        # Start all threads
        for t in threads:
            t.start()
    
        # Wait for all of them to finish
        for t in threads:
            t.join()    
        print 'success' 
            

tests = []
if os.path.isfile(path_tests):
    tests.append(path_tests)
else:
    for fn in os.listdir(path_tests):
       if fn.lower().endswith('.js'):
           tests.append(path_tests+'/'+fn)
  
if tests:
    for test in tests:
        file_name = os.path.basename(test)
        cmd = path_jerry + ' ' + test+' >'+path_result_folder+'/'+file_name.split('.')[0]+'.csv'
        print 'start - '+test
        r = subprocess.call(cmd, shell=True)
        print 'end - '+test
        
print 'success'

print '********START ANALYZE****************'

analyze_result_start()
            
