/*The class OpenTheDevilsWindow is meant to teach the student and the teacher
    how to display a basic window with information about the devil. It contains both
    data and methods. The comments denote the structure and function of the
    app
*/


/* A using directive to allow the vala compiler to use the Gtk library, it would be similar
to the area code contained within a phone number. */ 
using Gtk;

/* The class OpenTheDevilsWindow is public in scope and uses data and methods to display
a window about the devils number, 666. It derives from the class window from the Gtk
library. That means the class inherits all of the functionality of the window class
the colon between OpenTheDevilsWinow and window is the inheritance operator */
public class OpenTheDevilsWindow : Window
{   
    
    //Class data mamber of data type string that contains the devils number
    string thedevilsnumber = "666"; 
    //Class data method that returns an integer and displays the window once
    // the window is displayed, the window is destroyed
    // the window is destroyed by connecting the destroy signal to the main_quit function
    // the window by displays a label that contains the devils number
    public int displaywindowonce()
    {
        this.title = "The Devils Number is: ";
        this.set_default_size(400, -1);
        this.destroy.connect(Gtk.main_quit);
        this.add(new Label(thedevilsnumber));
        return 1;
       
    }
    
    /*The main function initializes the Gtk library, creates an instance of
    the class OpenTheDevilsWindow. Calls methods on the created object to
    setup the appliction: window.displaywindowonce(); to set up the window
    Makes the window visible window.show_all(); Starts the Gtk main loop
    with Gtk.main(); This loop waits for events such as user interactions
    and hndles them appropriately. Return Returns an integer value typically 0
    to indicate that the program has executed successfully */
    public static int main(string[] args)
    {
        // Initialize the GTK library
        Gtk.init(ref args);
        
        // Create an instance of the OpenTheDevilsWindow class
        OpenTheDevilsWindow window = new OpenTheDevilsWindow();
        
        // Set up the window
        window.displaywindowonce();
        
        // Make the window visible
        window.show_all();
        
        // Start the GTK main loop
        Gtk.main();
        
        // Return 0 to indicate successful execution
        return 0;
    }
}