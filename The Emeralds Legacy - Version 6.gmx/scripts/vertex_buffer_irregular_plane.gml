///vertex_buffer_irregular_plane(buffer,dataArray)
var buff = argument0;
var x1=argument1[| 0],y1=argument1[| 1],z1=argument1[| 2],x2=argument1[| 3],y2=argument1[| 4],z2=argument1[| 5],x3=argument1[| 6],y3=argument1[| 7],z3=argument1[| 0],x4=argument1[| 8],y4=argument1[| 9],z4=argument1[| 10],tLeft=argument1[| 11],tTop=argument1[| 12],tRight=argument1[| 13],tBottom=argument1[| 14];

vertex_position_3d(argument0,x1,y1,z1);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x2,y2,z2);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x3,y3,z3);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

vertex_position_3d(argument0,x4,y4,z4);
vertex_colour(argument0,colour,1);
vertex_texcoord(argument0,tRight,tTop);

ds_list_destroy(argument1);
