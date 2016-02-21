///draw_roundrect_outline_color(x1,y1,x2,y2,col1,col2,outline_color,outline_size,fill_color);

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var col1 = argument4;
var col2 = argument5;
var outline_color = argument6;
var outline_size = argument7;
var fill_color = !argument8;

//Stores previous draw color temporarily
//var previous_color=draw_get_color();

//draw_set_color(outline_color);

//draw_roundrect_color(128, 192 - 16, 224, 288, c_yellow, c_yellow, true);
//draw_roundrect_color(128 + 2, 192 - 16 + 2, 224 - 2, 288 - 2, seikaCol, c_dkgray, false);

var outline_loop_count = 0;
for(i=outline_loop_count; i < outline_size; i++) {
    draw_roundrect_color(x1 + i, y1 + i, x2 - i, y2 - i, outline_color, outline_color, true);
    outline_loop_count++;
}

draw_roundrect_color(x1 + outline_loop_count, y1 + outline_loop_count, x2 - outline_loop_count, y2 - outline_loop_count, col1, col2, fill_color);



//draw_set_color(color);
//draw_text(draw_x,draw_y,text);

//Sets previous draw color
//draw_set_color(previous_color);

