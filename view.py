import tkFileDialog, tkMessageBox, models
from Tkinter import *
from ttk import Treeview

root = Tk()
def choosing_file():
    files = tkFileDialog.askopenfilename(parent=root, filetypes = [('','*.js')], title='Choose a file',multiple=True)
    if files != None:        
        for item in files:
            lbPaths.insert(END,item) 

def start_processing():
    temp_list = list(lbPaths.get(0, END))
    for i in temp_list: 
        an_result = models.analyzing_result(i)
        tvResults.insert('', 'end', text=an_result.file_name, values=(an_result.time, an_result.time_closure, an_result.size, an_result.size_closure))
        

    
#set size of a main window
root.geometry("730x600")
root.title('Analyze of compiler')

#add a button for choosing files
btChooseFiles = Button(root, text ='Choose a JavaScript files', command = choosing_file, height=1, width=25)
btChooseFiles.pack(side=LEFT)
btChooseFiles.place(x=10,y=30,width=160)
 
#add a list box for paths 
lbPaths = Listbox(root)
lbPaths.pack(side = LEFT)
lbPaths.place(x=10,y=60,width=710)

#add button for starting processing
btChoose = Button(root, text ='Start', command = start_processing, height=1, width=25);
btChoose.place(x=10,y=230,width=40)

#add a treeview widget
tvResults = Treeview(root, columns=('time', 'time_closure', 'size','size_closure'))
#tvResults.column('file_name', width=100)
#tvResults.heading('file_name', text='File')
tvResults.heading('time', text='Time (ms)')
tvResults.heading('time_closure', text='Time with the Closure (ms)')
tvResults.heading('size', text='Size')
tvResults.heading('size_closure', text='Size with the Closure')

tvResults.pack(side = LEFT)
tvResults.place(x=10,y=270,width=710)
 
# #add label for operation time
# operatTime = StringVar()
# lbOperTime = Label(root, textvariable=operatTime)
# operatTime.set("Operation time (minute):")
# lbOperTime.pack(side=LEFT)
# lbOperTime.place(x=10,y=70,width=170)
# 
# #add a text box for operation time 
# tbOperTime = Entry(root, bd =5)
# tbOperTime.pack(side = LEFT)
# tbOperTime.place(x=183,y=70,width=100)
# 
# #add button for choosing path
# btChoose = Button(root, text ='...', command = choosing_file, height=1, width=25);
# btChoose.place(x=432,y=28,width=30)
# 
# #add button for download the data from the csv file
# btDownload = Button(root, text ='Download', command = download_data, height=1, width=80);
# btDownload.place(x=465,y=28, width = 80)
# 
# #add label for timer
# timer_data = StringVar()
# lbTimer = Label(root, textvariable=timer_data)
# lbTimer.pack(side=LEFT)
# lbTimer.place(x=260,y=390,width=200)

root.mainloop()
