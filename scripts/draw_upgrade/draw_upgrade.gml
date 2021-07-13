function draw_upgrade(argument0, argument1) {
	var global_name = argument0;
	var upgrade_name = argument1;

	for(i = 0; i < 5; i += 1) {
		draw_sprite(ds_list_find_value(plane_01_list, plane_01_from_the_list), 1, x + plane_01_the_x, y + 0);
		plane_01_the_x += 29;
		plane_01_from_the_list += 1;
	}
	
		ds_list_replace(plane_01_list, global_name - 1, red);

		var pln1_list = ds_list_write(plane_01_list);
		ini_open("savedata.ini");
		ini_write_string("upgr_lsts", upgrade_name, pln1_list);
		ini_close();
		
		plane_01_the_x = -59;
		plane_01_from_the_list = 0;
		plane_01_amount = 5;


}
