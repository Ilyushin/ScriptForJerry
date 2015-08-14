import sys, subprocess

if len(sys.argv) == 2:
    #set parameters
    path_tests = os.path.abspath(sys.argv[1])
    dir = os.path.dirname(__file__)
    path_jerry = path_jerry = os.path.join(dir, 'jerry_opcodes')
    path_result_folder = os.path.join(dir, 'results')
    #path_tests = "/Users/Evgeniy/git/ScriptForJerry/collect_statistic_ocodes/test_files"
    
    tests = []
    for fn in os.listdir(path_tests):
       if fn.lower().endswith('.js'):
           tests.append(path_tests+'/'+fn)
           
    if tests:
        for test in tests:
            cmd = self.path_jerry + ' ' + test+' >'+path_result_folder+'_'+os.path.basename(test)+'.csv'
            r = subprocess.check_output(cmd, shell=True)
            