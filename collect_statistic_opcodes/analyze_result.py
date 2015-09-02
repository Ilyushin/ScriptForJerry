import sys, subprocess, os, csv

dir = os.path.dirname(__file__)
path_result_folder = os.path.join(dir, 'results')

results_path = []
for fn in os.listdir(path_result_folder):
   if fn.lower().endswith('.csv') and not "_analyze" in fn.lower() :
       results_path.append(path_result_folder+'/'+fn)
 
def process_data(path):
    print 'start - '+ path 
    with open(path, 'rb') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter=',')           
        #row of the dict consist of following fields:
        # - id an opcode in bytecode
        # - name of opcode
        # - number of calls 
        # - min execution time
        # - max execution time
        # - average execution time
        
        #id for opcodes, which doesn't have real id
        #id_opcode = 1000
        result_dict = {}
        for row in csv_reader:
            l = len(row)
            if l != 4: continue
            
            data = []
            if l > 4:
                data = row[l-4:] 
                for i in row[:l-4]:
                    result_dict.setdefault(id_opcode,[i,0,0,0,0])
                    id_opcode += 1                  
            else: 
                data = row               
                                 
            id = int(data[2])-1    
            result_dict.setdefault(id,[data[0],0,0,0,0])
            #number
            result_dict[id][1] += 1
            #min
            if result_dict[id][2] == 0:
               result_dict[id][2] = float(data[3]) 
            elif result_dict[id][2] > float(data[3]):
                result_dict[id][2] = float(data[3])
            #max
            if result_dict[id][3] < float(data[3]):
                result_dict[id][3] = float(data[3])
            #average
            result_dict[id][4] += float(data[3])
       
        
        csvfile_an = open(path_result_folder+'/'+os.path.splitext(os.path.basename(path))[0]+'_analyze.csv', 'w+')
        csv_writer = csv.writer(csvfile_an, delimiter=' ', quoting=csv.QUOTE_NONE, escapechar=' ', quotechar='')
        csv_writer.writerow(['Name',',Id',',Number of calls',',Min time',',Max time',',Average time'])
        for key, value in result_dict.iteritems():
            newStr = []
            newStr.append(value[0])
            newStr.append(',' + str(key))
            newStr.append(',' + str(value[1]))
            newStr.append(',' + '{0:.6f}'.format(value[2]))
            newStr.append(',' + '{0:.6f}'.format(value[3]))
            if value[1] == 0:
                newStr.append(',' + '{0:.15f}'.format(value[3])) 
            else:
                newStr.append(',' + '{0:.15f}'.format(value[3]/value[1]))
            
            csv_writer.writerow(newStr)
        csvfile_an.close()
    print 'finish - '+ path    
            
if results_path:
    for path in results_path:
        process_data(path) 
        