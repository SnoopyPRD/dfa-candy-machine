if(!instance_exists(obj_data_carrier)){
	instance_create_depth(0, 0, 0, obj_data_carrier);
}
audio_stop_all();
obj_data_carrier.targetEnter = targetEnter;