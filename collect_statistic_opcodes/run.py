#!/usr/bin/python2.7
import sys, subprocess, os, csv, analyze_result

if len(sys.argv) == 1:
    #set parameters
    dir = os.path.dirname(__file__)
    path_jerry = path_jerry = os.path.join(dir, 'jerry')
    path_result_folder = os.path.join(dir, 'results')
    path_tests = os.path.join(dir,'test_files')
        
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
    
    print '********START ANALYZE****************'
    
    analyze_result.start()
            