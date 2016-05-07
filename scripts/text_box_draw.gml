///text_box_draw()

// Draw the string and the box
var xx = GUIController.gui_width div 4 ;
var yy = floor(GUIController.gui_height * 0.70);
//var yy = GUIController.gui_height div 2;
draw_set_alpha(.5);
draw_roundrect_colour(xx, yy, xx + width, yy + height, c_black, c_black, false);
draw_set_alpha(1);

// Set the color to white
draw_set_color(c_white);

// Are we past the width? Insert a line break
// This has to be before getting the last_space variable or it won't work right
if(string_width(str) > width - padding - padding) {
    // Remove the space and replace it with a line break
    message = string_delete(message, last_space, 1);
    message = string_insert("#", message, last_space);
    ds_list_add(start, last_space + 1);
}

// Make sure we have not reached the end of the message
if(count < string_length(message)) {
    // Are we at a space? Set the last space variable
    if(string_char_at(message, count) == " ") {
        last_space = count;
    }
    
    //Increment the count
    count++;
} 
// Did we go past the bottom?  Move up a line
if(string_height(str) > height - padding) {
    line++;
}

//Grab the string
str = string_copy(message, ds_list_find_value(start, line), count - ds_list_find_value(start, line));
    
// Draw the text
draw_text(xx + padding, yy + padding, str);

