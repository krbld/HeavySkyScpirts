function player_slgshttr() {
	if(cooldown01 <= 0)
	{
		instance_create_layer(player.x-23, player.y, "Instances", slugshot);

		the_slug_sound = ds_list_find_value(player_slugs, irandom_range(0,4));
	
		script_execute(sound_effect, the_slug_sound, 0.5, 1);

		cooldown01 = 30;
	}

	cooldown01 += -1 * global.slug_attack_speed - global.speed_buff;

	if(cooldown02 <= 0)
	{
		instance_create_layer(player.x+23, player.y, "Instances", slugshot);

		cooldown02 = 30;
	}

	cooldown02 += -1 * global.slug_attack_speed - global.speed_buff;


}
