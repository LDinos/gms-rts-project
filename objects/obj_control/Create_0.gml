/// @description
camera_dragging = false
selection_dragging = false

function check_camera_dragging() {
	if mouse_check_button_pressed(mb_middle) {
	mouse_xx = camera_get_view_x(view_camera[0]) - window_mouse_get_x()
	mouse_yy = camera_get_view_y(view_camera[0]) - window_mouse_get_y()
	camera_dragging = true;
	}
	else if mouse_check_button_released(mb_middle) {
		camera_dragging = false;
	}

	if (camera_dragging) {
		camera_set_view_pos(view_camera[0], mouse_xx + window_mouse_get_x(), mouse_yy + window_mouse_get_y())
	}
}

function check_selection_dragging() {
	if mouse_check_button_pressed(mb_left) {
	click_point_x = mouse_x
	click_point_y = mouse_y
	selection_dragging = true;
	}
	else if mouse_check_button_released(mb_left) {
		selection_dragging = false;
	}
}