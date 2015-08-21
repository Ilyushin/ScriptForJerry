import sys, subprocess, os, csv

if len(sys.argv) == 1:
    #set parameters
    #path_tests = os.path.abspath(sys.argv[1])
    dir = os.path.dirname(__file__)
    path_jerry = path_jerry = os.path.join(dir, 'jerry_opcodes')
    path_result_folder = os.path.join(dir, 'results')
    path_tests = "/home/john/git/ScriptForJerry/test_closure_jerry/test_files"
    #path_tests = "/home/john/git/Test"
    
    tests = []
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
            