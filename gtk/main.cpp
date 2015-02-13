/*
 * 	test for gtk layout 
 *
 */
//#define GTK
#define LINUX
#include <stdio.h>
#include <gtk/gtk.h>
#include "proc.h"
//#include "misc.h"

enum
{
	BASIC_FIELD,
	MEMORY_FIELD,
	JOB_FIELD,
  	COL_COMMAND = 0,
  	COL_PCPU
};


void refresh()
{
//	Procinfo::read_loadavg();
//	infobar->update_load(); //
}


int main(int   argc, char *argv[] )
{
//	std::string s("aaa");

    gtk_init (&argc, &argv);
	GtkBuilder *gb=gtk_builder_new();

	gtk_builder_add_from_file(gb,"qps.xml",NULL);
	GtkWidget *win=(GtkWidget *)gtk_builder_get_object(gb,"window");
	gtk_widget_show_all(win);
 	
	GtkWidget *menu;
    GtkWidget *menuitem;
    GtkWidget *menubar;

	menubar=(GtkWidget *)gtk_builder_get_object(gb,"menubar");
	
	menu = gtk_menu_new ();
//	gtk_menu_shell_append (GTK_MENU_SHELL (menu), menuitem);
	
	menuitem = gtk_menu_item_new_with_label ("Command");
	gtk_widget_show_all(menuitem);

   // gtk_menu_item_set_submenu (GTK_MENU_ITEM (menuitem), menu);	
	gtk_menu_shell_append (GTK_MENU_SHELL (menubar), menuitem);
//	make_mainwindow(); 
//	GTK_set_fields_list(basic_fields);
//	proc=new Proc();
//	g_timeout_add(1000,(GtkFunction)update,NULL); // 100ms -> 4.95% 
	g_signal_connect (win, "destroy",
			G_CALLBACK (gtk_widget_destroyed), &win);

	

	gtk_main (); //destory List
    return 0;
}

