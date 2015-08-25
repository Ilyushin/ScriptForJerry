import tkFileDialog, tkMessageBox, models, csv, os, threading
from Tkinter import *
from ttk import Treeview

root = Tk()
def choosing_file():
    files = tkFileDialog.askopenfilename(parent=root, filetypes = [('','*.js')], title='Choose a file',multiple=True)
    if files != None: 
        lbPaths.delete(0, END)       
        for item in files:
            lbPaths.insert(END,item) 
            
def processing_test(path, log):
    an_result = models.analyzing_result(path,'ADVANCED_OPTIMIZATIONS')
    an_result.execut_scripts_closure(log)
    parent = tvResults.insert(parent_closure, 'end', text=an_result.file_name)
    tvResults.insert(parent, 'end', text=an_result.file_name, values=(an_result.time, an_result.time_closure, an_result.size, an_result.size_closure, an_result.decreased_time, an_result.reduced_size))

def start_processing():
    temp_list = list(lbPaths.get(0, END))
    parent_closure = tvResults.insert('', 'end', text='Closure')
    #parent_esmangle = tvResults.insert('', 'end', text='Esmangle')
    
    #create a csv file for saving result
    path_result_folder = os.path.join(os.path.dirname(__file__), 'results')
    csvfile = open(path_result_folder+'/result.csv', 'w+')
    csv_writer = csv.writer(csvfile, delimiter=' ', quoting=csv.QUOTE_NONE, escapechar=' ', quotechar='') 
    
    for i in temp_list:
        threading.Thread(target=processing_test, args=(path,csv_writer,)).start() 
         
    csvfile.close()
    

    
    
    
#set size of a main window
root.geometry("1320x500")
root.title('Analyze of compiler')

#add a button for choosing files
btChooseFiles = Button(root, text ='Choose a JavaScript files', command = choosing_file, height=1, width=25)
#btChooseFiles.place(x=10,y=30,width=160)
btChooseFiles.pack(side='left')
btChooseFiles.place(x=10,y=30,width=160)
#btChooseFiles.grid(row=0,column=0)
 
#add a list box for paths 
lbPaths = Listbox(root)
#lbPaths.place(x=10,y=60,width=710)
lbPaths.pack(side='left')
lbPaths.place(x=10,y=60,width=710)
#lbPaths.grid(row=1,column=0)

#add button for starting processing
btChoose = Button(root, text ='Start', command = start_processing, height=1, width=25);
#btChoose.place(x=10,y=230,width=40)
btChoose.pack(side='left')
btChoose.place(x=10,y=230,width=40)
#btChoose.grid(row=2,column=0)

#add a treeview widget
tvResults = Treeview(root, columns=('time', 'time_closure', 'size','size_closure', 'decreased_time', 'reduced_size'))
tvResults.heading('time', text='Time (ms)')
tvResults.heading('time_closure', text='Time with the Closure (ms)')
tvResults.heading('size', text='Size')
tvResults.heading('size_closure', text='Size with the Closure')
tvResults.heading('decreased_time', text='Decreased time to')
tvResults.heading('reduced_size', text='Reduced size')
#tvResults.place(x=10,y=270,width=710)
tvResults.pack(side='left')
tvResults.place(x=10,y=270,width=1300)
#tvResults.grid(row=3,column=0)

root.mainloop()
