#!/usr/bin/python2.7
import sys, subprocess, os, csv, gzip, threading

dir = os.path.dirname(__file__)
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
    print 'start - '+ path 
    with open(path, 'rb') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter=',')           
        #row of the dict consist of following fields:
        # - id an opcode in bytecode
        # - number of calls 
        # - min execution time
        # - max execution time
        # - average execution time
        
        #id for opcodes, which doesn't have real id
        #id_opcode = 1000
        result_dict = {}
        for row in csv_reader:
            l = len(row)
            if l != 2: continue           
                                 
            id = int(row[0])    
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
    print 'opcodes in bytcode - '+str(len(dict_opcodes)) 
    print 'opcodes after analyze - '+str(len(result_dict))           
    print 'finish - '+ path    

def start(): 
    
    results_path = []
    for fn in os.listdir(path_result_folder):
        if fn.lower().endswith('.csv') and not "_analyze" in fn.lower() :
            results_path.append(path_result_folder+'/'+fn)
               
    if results_path:
        for path in results_path:
            process_data(path)
        print 'success' 
        
    print '********Compress files*****************' 
    
    for fn in os.listdir(path_result_folder):
        if fn.lower().endswith('.csv'):
            with open(path_result_folder+'/'+fn, 'rb') as f_in:
                with gzip.open(path_result_folder+'/'+fn+'.gz', 'wb') as f_out:
                    f_out.writelines(f_in)
            os.remove(path_result_folder+'/'+fn)
            print 'remove - '+path_result_folder+'/'+fn 
 