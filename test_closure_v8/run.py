import models, csv, os, threading

dir = os.path.dirname(__file__)
path_result_folder = os.path.join(dir, 'results')
path_tests = os.path.join(dir,'test_files')


tests = []
for fn in os.listdir(path_tests):
   if fn.lower().endswith('.js'):
       tests.append(path_tests+'/'+fn)
            
def processing_test(path, log):
    print '*********start - '+path
    an_result = models.analyzing_result(path,'ADVANCED_OPTIMIZATIONS')
    an_result.execut_scripts_closure(log)
    print '*********finish - '+path

def start_processing():
    #create a csv file for saving result
    csvfile = open(path_result_folder+'/result.csv', 'w+')
    csv_writer = csv.writer(csvfile, delimiter=' ', quoting=csv.QUOTE_NONE, escapechar=' ', quotechar='') 
    csv_writer.writerow(['Test name,','Runtime (ms),','Runtime with Closure (ms),','Runtime of v8 after Closure (ms),','Size,','Size after Closure,','Decreased working time to (%),','Reduced size at (%)'])
    
    threads = []
    for path in tests:
        threads.append(threading.Thread(target=processing_test, args=(path,csv_writer,))) 
      
     # Start all threads
    for t in threads:
        t.start()
    
     # Wait for all of them to finish
    for t in threads:
        t.join() 
         
    csvfile.close()
    print 'success'
    
start_processing()
    