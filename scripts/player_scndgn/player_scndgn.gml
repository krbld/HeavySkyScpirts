function player_scndgn() {
	if(cooldown01 <= 0)
	{
		instance_create_layer(player.x-25, player.y, "Instances", player_bullet);

		the_bullet_sound3 = ds_list_find_value(player_bullets, irandom_range(0,4));
	
		script_execute(sound_effect, the_bullet_sound3, 0.25, 1.12);

		cooldown01 = 17.5;
	}

	cooldown01 += -1 * global.machine_attack_speed - global.speed_buff;

	if(cooldown02 <= 0)
	{
		instance_create_layer(player.x+25, player.y, "Instances", player_bullet);

		the_bullet_sound2 = ds_list_find_value(player_bullets, irandom_range(0,4));
	
		script_execute(sound_effect, the_bullet_sound2, 0.25, 0.88);

		cooldown02 = 18.5;
	}

	cooldown02 += -1 * global.machine_attack_speed - global.speed_buff;


}
