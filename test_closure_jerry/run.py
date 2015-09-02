import models, csv, os

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
    
    threads = []
    for path in tests:
        processing_test(path,csv_writer) 
      
    csvfile.close()
    print 'success'
    
start_processing()
    