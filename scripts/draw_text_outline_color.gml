///draw_text_outline_color(x,y,outline_size,text,color,outline_color)
var draw_x = argument0;
var draw_y = argument1;
var outline_size = argument2;
var text = argument3;
var color = argument4;
var outline_color = argument5;

//Stores previous draw color temporarily
var previous_color=draw_get_color();

draw_set_color(outline_color);
for(i=draw_x-outline_size; i<=draw_x+outline_size; i++){
    for(n=draw_y-outline_size; n<=draw_y+outline_size; n++){
        draw_text(i,n,text);
    }
}
draw_set_color(color);
draw_text(draw_x,draw_y,text);

//Sets previous draw color
draw_set_color(previous_color);

