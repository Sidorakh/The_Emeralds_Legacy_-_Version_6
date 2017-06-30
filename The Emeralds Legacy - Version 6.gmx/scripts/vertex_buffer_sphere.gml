///scr_vertex_buffer_sphere(vertex_buffer,cx,cy,cz,radius,interval,colour);
var buff = argument0,cx=argument1,cy=argument2,cz=argument3,rad=argument4,int=argument5,colour=argument6;
for (var i=0;i<360;i+=int)
{
    for (var j=0;j<360;j+=int)
    {
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i,j),cy+d3d_lengthdir_y(rad,i,j),cz+d3d_lengthdir_z(rad,i,j))
        vertex_texcoord(buff,i/360,j/360);
        vertex_colour(buff,colour,1);
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i,j-int),cy+d3d_lengthdir_y(rad,i,j-int),cz+d3d_lengthdir_z(rad,i,j-int))
        vertex_texcoord(buff,i/360,j/360);
        vertex_colour(buff,colour,1);
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i-int,j),cy+d3d_lengthdir_y(rad,i-int,j),cz+d3d_lengthdir_z(rad,i-int,j))
        vertex_texcoord(buff,i/360,j/360);
        vertex_colour(buff,colour,1);
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i,j),cy+d3d_lengthdir_y(rad,i,j),cz+d3d_lengthdir_z(rad,i,j))
        vertex_texcoord(buff,1-i/360,1-j/360);
        vertex_colour(buff,colour,1);
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i,j-int),cy+d3d_lengthdir_y(rad,i,j-int),cz+d3d_lengthdir_z(rad,i,j-int))
        vertex_texcoord(buff,1-i/360,1-j/360);
        vertex_colour(buff,colour,1);
        vertex_position_3d(buff,cx+d3d_lengthdir_x(rad,i+int,j),cy+d3d_lengthdir_y(rad,i+int,j),cz+d3d_lengthdir_z(rad,i+int,j))
        vertex_texcoord(buff,1-i/360,1-j/360);
        vertex_colour(buff,colour,1);
    }
}
