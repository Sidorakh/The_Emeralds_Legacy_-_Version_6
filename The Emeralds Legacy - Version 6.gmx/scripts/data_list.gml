var list = ds_list_create(), i = 0;
repeat argument_count
{
    ds_list_add(list,argument[i++]);
}
return list;
