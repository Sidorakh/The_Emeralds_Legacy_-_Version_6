///texture_get_uv_ypos(ypos,resource);
//resource - as string


if asset_get_type(argument1) == asset_sprite
{
    //sprite
    return argument0/sprite_get_height(asset_get_index(argument1));
}
if asset_get_type(argument1) == asset_background
{
    //background
    return argument0/background_get_height(asset_get_index(argument1));
}
