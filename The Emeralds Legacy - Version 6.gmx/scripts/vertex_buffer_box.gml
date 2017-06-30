///vertex_buffer_box(buffer,dataArray);
//vertices defined as a triangle LIST
var x1, y1, z1, x2, y2, z2, tLeft, tTop, colour;
x1 = argument1[| 0];
y1 = argument1[| 1];
z1 = argument1[| 2];
x2 = argument1[| 3];
y2 = argument1[| 4];
z2 = argument1[| 5];
tLeft = argument1[| 6];
tTop = argument1[| 7];
tRight = argument1[| 8];
tBottom = argument1[| 9];
colour = argument1[| 10];

//bottom

vertex_position_3d(argument0,x1,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x1,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);



vertex_position_3d(argument0,x2,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x1,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

//front

vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x2,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x1,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);



vertex_position_3d(argument0,x2,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x2,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

//right

vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x2,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);

vertex_position_3d(argument0,x2,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);


vertex_position_3d(argument0,x2,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x2,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);

vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);


//top

vertex_position_3d(argument0,x2,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x1,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);


vertex_position_3d(argument0,x2,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x2,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

//back

vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x1,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x1,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);


vertex_position_3d(argument0,x2,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x2,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x1,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

//right

vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);

vertex_position_3d(argument0,x1,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

vertex_position_3d(argument0,x1,y1,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);


vertex_position_3d(argument0,x1,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tTop);

vertex_position_3d(argument0,x1,y2,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tLeft,tBottom);

vertex_position_3d(argument0,x1,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tBottom);

ds_list_destroy(argument1);
