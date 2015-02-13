#!/usr/bin/env python
# -*- coding: iso-8859-1 -*-
# example by hyun

import pygtk
pygtk.require('2.0')
import gtk
import sys
import commands

class MainWindow(gtk.Window):
	def __init__(self, parent=None):
		gtk.Window.__init__(self)
		try:
			self.set_screen(parent.get_screen())
		except AttributeError:
			self.connect('destroy', lambda *w: gtk.main_quit())
		
		self.set_title(self.__class__.__name__)
		self.set_border_width(0)

		#actions = gtk.ActionGroup("Actions")
		#actions.add_actions(entries)
		#actions.add_toggle_actions(toggle_entries)
		#actions.add_radio_actions(color_entries, COLOR_RED, activate_radio_action)
		#actions.add_radio_actions(shape_entries, SHAPE_OVAL, activate_radio_action)

		#ui = gtk.UIManager()
		#ui.insert_action_group(actions, 0)
		#self.add_accel_group(ui.get_accel_group())

		try:
            		mergeid = ui.add_ui_from_string(ui_info)
        	except gobject.GError, msg:
           		print "building menus failed: %s" % msg

        	box1 = gtk.VBox(False, 0)
        	self.add(box1)

        	box1.pack_start(ui.get_widget("/MenuBar"), False, False, 0)

        	label = gtk.Label("Type\n<alt>\nto start")
        	label.set_size_request(200, 200)
        	label.set_alignment(0.5, 0.5)
        	box1.pack_start(label, True, True, 0)

        	separator = gtk.HSeparator()
        	box1.pack_start(separator, False, True, 0)

        	box2 = gtk.VBox(False, 10)
        	box2.set_border_width(10)
        	box1.pack_start(box2, False, True, 0)

        	button = gtk.Button("close")
        	button.connect("clicked", lambda b, w=self: w.destroy())
        	box2.pack_start(button, True, True, 0)
        	button.set_flags(gtk.CAN_DEFAULT)
        	button.grab_default()

        	self.show_all()


	
class EntryExample:

    def enter_callback(self, widget, entry):
        phone_num = entry.get_text()

    def enter_callback2(self, widget, entry):
        message = entry.get_text()
	print " callback2"
	
    def entry_toggle_editable(self, checkbutton, entry):
        entry.set_editable(checkbutton.get_active())

    def entry_toggle_visibility(self, checkbutton, entry):
        entry.set_visibility(checkbutton.get_active())    
    
    def ok_callback(self, widget, data=None):           
	print ret
	
	gtk.main_quit()
	sys.exit(0)
	
    def __init__(self):
        # create a new window
        window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        window.set_size_request(200, 100)
        window.set_title("process viewer")
        window.connect("delete_event", lambda w,e: gtk.main_quit())

        vbox = gtk.VBox(False, 0)
        window.add(vbox)
        vbox.show()
		
	self.entry = gtk.Entry()
        self.entry.set_max_length(50)
#        self.entry.connect("activate", self.enter_callback, entry)
	i=0	
        for arg in sys.argv: 
	    i+=1    	
	if i == 2 : 	    
    	    self.entry.set_text(sys.argv[1])
	    
#        entry.insert_text(" world", len(entry.get_text()))
#        self.entry.select_region(0, len(entry.get_text()))
        vbox.pack_start(self.entry, True, True, 0)
        self.entry.show()
     
        self.entry2 = gtk.Entry()
        self.entry2.set_max_length(80)
        self.entry2.connect("activate", self.enter_callback2, self.entry2)
        #entry2.set_text(sys.argv[1])
	self.entry2.set_text("")
        self.entry2.select_region(0, len(self.entry2.get_text()))
        vbox.pack_start(self.entry2, True, True, 0)
        self.entry2.show()
       
  
        hbox = gtk.HBox(False, 0)
        vbox.add(hbox)
        hbox.show()
                                  
        check = gtk.CheckButton("Editable")
        hbox.pack_start(check, True, True, 0)
#        check.connect("toggled", self.entry_toggle_editable, entry)
        check.set_active(True)
        check.show()
    
        check = gtk.CheckButton("Visible")
        hbox.pack_start(check, True, True, 0)
#        check.connect("toggled", self.entry_toggle_visibility, entry)
        check.set_active(True)
        check.show()
                                   
        button = gtk.Button(stock=gtk.STOCK_YES)
        button.connect("clicked", self.ok_callback)
        vbox.pack_start(button, True, True, 0)
        button.set_flags(gtk.CAN_DEFAULT)
        button.grab_default()
        button.show()
        window.show()

def main():
    #sys.argv[1:]
    gtk.main()
    return 0

if __name__ == "__main__":
    EntryExample()
    main()
