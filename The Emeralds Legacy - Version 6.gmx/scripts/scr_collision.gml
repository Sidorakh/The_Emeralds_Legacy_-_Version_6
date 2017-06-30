///scr_collision( self, other )
//AABB1
var x1Min = argument0.x1;
var x1Max = argument0.x2;
var y1Min = argument0.y1;
var y1Max = argument0.y2;
var z1Min = argument0.z1;
var z1Max = argument0.z2;
//AABB2
var x2Min = argument1.x1;
var x2Max = argument1.x2;
var y2Min = argument1.y1;
var y2Max = argument1.y2;
var z2Min = argument1.z1;
var z2Max = argument1.z2;

if (x1Max < x2Min || x1Min > x2Max)
{
    return false;
}
if (y1Max < y2Min || y1Min > y2Max)
{
    return false;
}

return true;


/*
var s_inst = argument0;
var o_inst = argument1;
var result = false;

if ( o_inst.modelType == colNone  || s_inst.modelType == colNone )  //Ignore instances that have no collision mesh
{
    return false;
}
else if ( s_inst.modelType == colSphere ) and ( o_inst.modelType == colSphere )  //Two spheres
{    
    var dist = point_distance_3d( s_inst.x_hull, s_inst.y_hull, s_inst.z_hull,    o_inst.x_hull, o_inst.y_hull, o_inst.z_hull );
    if ( dist <= s_inst.model_size + o_inst.model_size )
    {
        return true;
    } 
    else
    {
        return false;
    }
}
if ( s_inst.modelType == colBlock ) and ( o_inst.modelType == colSphere ) { //Self is a cube, other is a sphere
    
    //A Simple Method for Box-Sphere Intersection Testing by Jim Arvo from "Graphics Gems", Academic Press, 1990
    var dmin = 0;
    var sphere = o_inst;
    var cube = s_inst;
    
    var sphere_x = sphere.x_hull
    var sphere_y = sphere.y_hull
    var sphere_z = sphere.z_hull
    
    var b_min_x = cube.x_hull + cube.model_bb_min_x;
    var b_max_x = cube.x_hull + cube.model_bb_max_x;
    var b_min_y = cube.y_hull + cube.model_bb_min_y;
    var b_max_y = cube.y_hull + cube.model_bb_max_y;
    var b_min_z = cube.z_hull + cube.model_bb_min_z;
    var b_max_z = cube.z_hull + cube.model_bb_max_z;
    
    if ( sphere_x < b_min_x ) {
        dmin += sqr( sphere_x - b_min_x );
    } else if ( sphere_x > b_max_x ) {
        dmin += sqr( sphere_x - b_max_x );
    }

    if ( sphere_y < b_min_y ) {
        dmin += sqr( sphere_y - b_min_y );
    } else if ( sphere_y > b_max_y ) {
        dmin += sqr( sphere_y - b_max_y );
    }
    
    if ( sphere_z < b_min_z ) {
        dmin += sqr( sphere_z - b_min_z );
    } else if ( sphere_z > b_max_z ) {
        dmin += sqr( sphere_z - b_max_z );
    }
    
    if ( dmin <= sqr( sphere.model_size ) ) return true else return false;
    
} if ( s_inst.modelType == colSphere ) and ( o_inst.modelType == colBlock ) { //Self is a sphere, other is a cube
    
    //A Simple Method for Box-Sphere Intersection Testing by Jim Arvo from "Graphics Gems", Academic Press, 1990
    var dmin = 0;
    var sphere = s_inst;
    var cube = o_inst;
    
    var sphere_x = sphere.x_hull
    var sphere_y = sphere.y_hull
    var sphere_z = sphere.z_hull
    
    var b_min_x = cube.x_hull + min(cube.x1,cube.x2);
    var b_max_x = cube.x_hull + max(cube.x1,cube.x2);
    var b_min_y = cube.y_hull + min(cube.y1,cube.y2);
    var b_max_y = cube.y_hull + max(cube.y1,cube.y2);
    var b_min_z = cube.z_hull + min(cube.z1,cube.z2);
    var b_max_z = cube.z_hull + max(cube.z1,cube.z2);
    
    if ( sphere_x < b_min_x ) {
        dmin += sqr( sphere_x - b_min_x );
    } else if ( sphere_x > b_max_x ) {
        dmin += sqr( sphere_x - b_max_x );
    }

    if ( sphere_y < b_min_y ) {
        dmin += sqr( sphere_y - b_min_y );
    } else if ( sphere_y > b_max_y ) {
        dmin += sqr( sphere_y - b_max_y );
    }
    
    if ( sphere_z < b_min_z ) {
        dmin += sqr( sphere_z - b_min_z );
    } else if ( sphere_z > b_max_z ) {
        dmin += sqr( sphere_z - b_max_z );
    }
    
    if ( dmin <= sqr( sphere.model_size ) ) return true else return false;
    
} if ( s_inst.modelType == colBlock ) and ( o_inst.modelType == colBlock ) {  //Two cubes
    
    var s_min_x = s_inst.x_hull + s_inst.model_bb_min_x;
    var s_max_x = s_inst.x_hull + s_inst.model_bb_max_x;
    var s_min_y = s_inst.y_hull + s_inst.model_bb_min_y;
    var s_max_y = s_inst.y_hull + s_inst.model_bb_max_y;
    var s_min_z = s_inst.z_hull + s_inst.model_bb_min_z;
    var s_max_z = s_inst.z_hull + s_inst.model_bb_max_z;
    
    var o_min_x = o_inst.x_hull + o_inst.model_bb_min_x;
    var o_max_x = o_inst.x_hull + o_inst.model_bb_max_x;
    var o_min_y = o_inst.y_hull + o_inst.model_bb_min_y;
    var o_max_y = o_inst.y_hull + o_inst.model_bb_max_y;
    var o_min_z = o_inst.z_hull + o_inst.model_bb_min_z;
    var o_max_z = o_inst.z_hull + o_inst.model_bb_max_z;
    
    if ( o_min_x > s_max_x ) return false else
    if ( o_max_x < s_min_x ) return false else
    if ( o_min_y > s_max_y ) return false else
    if ( o_max_y < s_min_y ) return false else
    if ( o_min_z > s_max_z ) return false else
    if ( o_max_z < s_min_z ) return false else return true;
    
}
