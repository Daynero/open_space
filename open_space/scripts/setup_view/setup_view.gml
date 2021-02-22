var disp_width=display_get_width();
var disp_height=display_get_height();
if disp_width <1 || disp_height  < 1 {
	exit;
}
if(os_type==os_windows)
{
	disp_width=window_get_width();
	disp_height=window_get_height();
}
var disp_ratio=disp_width/disp_height;
var max_ratio=room_width/room_height;
var old_height=room_height;
var old_width=room_width;
var new_height=old_height;
var new_width=old_width;
if(disp_ratio>max_ratio) new_width=disp_ratio*room_height;
else new_height=room_width/disp_ratio;
var delta_w=(old_width-new_width)/2;
var delta_h=(old_height-new_height)/2;
view_camera[0]=camera_create_view(delta_w,delta_h,new_width,new_height);
view_wport[0]=disp_width;
view_hport[0]=disp_height;
view_visible[0]=true;
view_enabled=true;
surface_resize(application_surface,disp_width,disp_height);
global.view_delta_w=delta_w;
global.view_delta_h=delta_h;
global.view_width=new_width;
global.view_height=new_height;
