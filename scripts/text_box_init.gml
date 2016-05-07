///text_box_init()

// Create variables
width = 240;
height = 80;
padding = 8;

// Keep track of the starting line
start = ds_list_create();
ds_list_add(start, 0);

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;

// Set the message
message = "dkjs kjskdjlsj ljslkdjslkd jkjdksjd kjskjdksj kjskjdksjdk kjskjdksj kjskjdks dkjskdjksjdks kjskdjksjdk kjskjdksjd lkjlksjdlksj kjslkjdlks kjlks jdlkjs lkjslkdjsl ksjlkd jslk jdlksjd lksjdlk slkdjs lkdjslk dlksjdlk slkd jslkds jlkd jslkd jslkd jlk jdslk jdlks jds end."
str = "";
