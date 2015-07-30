import tkFileDialog, tkMessageBox, models
from Tkinter import *
from ttk import Treeview

root = Tk()
def choosing_file():
    files = tkFileDialog.askopenfilename(parent=root, filetypes = [('','*.js')], title='Choose a file',multiple=True)
    if files != None: 
        lbPaths.delete(0, END)       
        for item in files:
            lbPaths.insert(END,item) 

def start_processing():
    temp_list = list(lbPaths.get(0, END))
    for i in temp_list: 
        an_result = models.analyzing_result(i,'ADVANCED_OPTIMIZATIONS')
        parent = tvResults.insert('', 'end', text=an_result.file_name)
        tvResults.insert(parent, 'end', text=an_result.file_name, values=(an_result.time, an_result.time_closure, an_result.size, an_result.size_closure))
        an_result = models.analyzing_result(i,'SIMPLE_OPTIMIZATIONS')
        tvResults.insert(parent, 'end', text=an_result.file_name, values=(an_result.time, an_result.time_closure, an_result.size, an_result.size_closure))
        an_result = models.analyzing_result(i,'WHITESPACE_ONLY')
        tvResults.insert(parent, 'end', text=an_result.file_name, values=(an_result.time, an_result.time_closure, an_result.size, an_result.size_closure))
    
#set size of a main window
#root.geometry("730x600")
root.title('Analyze of compiler')

#add a button for choosing files
btChooseFiles = Button(root, text ='Choose a JavaScript files', command = choosing_file, height=1, width=25)
btChooseFiles.place(x=10,y=30,width=160)
#btChooseFiles.pack(side='left')
btChooseFiles.grid(row=0,column=0)
 
#add a list box for paths 
lbPaths = Listbox(root)
lbPaths.place(x=10,y=60,width=710)
#lbPaths.pack(side='left')
lbPaths.grid(row=1,column=0)

#add button for starting processing
btChoose = Button(root, text ='Start', command = start_processing, height=1, width=25);
btChoose.place(x=10,y=230,width=40)
#btChoose.pack(side='left')
btChoose.grid(row=2,column=0)

#add a treeview widget
tvResults = Treeview(root, columns=('time', 'time_closure', 'size','size_closure'))
#tvResults.column('file_name', width=100)
#tvResults.heading('file_name', text='File')
tvResults.heading('time', text='Time (ms)')
tvResults.heading('time_closure', text='Time with the Closure (ms)')
tvResults.heading('size', text='Size')
tvResults.heading('size_closure', text='Size with the Closure')
tvResults.place(x=10,y=270,width=710)
#tvResults.pack(side='left')
tvResults.grid(row=3,column=0)

root.mainloop()
