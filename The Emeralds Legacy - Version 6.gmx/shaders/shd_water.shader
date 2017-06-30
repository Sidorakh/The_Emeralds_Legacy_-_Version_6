//
// Water-style deformation
//
attribute vec3 in_Position;                     // (x,y,z)
//attribute vec3 in_Normal;                     // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                       // (r,g,b,a)
attribute vec2 in_TextureCoord;                 // (u,v)
uniform float dir;                              // direction for offset
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
float noise( float a, float b )
{
    return sin(a)*cos(a) * sin(b)*cos(b);
}

void main()
{
    vec4 object_space_pos = vec4(in_Position.x,in_Position.y,in_Position.z+(sin((dir+in_Position.x))-cos(dir+in_Position.y))/2.0,1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
