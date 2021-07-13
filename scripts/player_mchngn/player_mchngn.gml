function player_mchngn() {
	if(cooldown <= 0)
	{
		instance_create_layer(player.x, player.y, "Instances", player_bullet);

		the_bullet_sound = ds_list_find_value(player_bullets, irandom_range(0,4));
	
		script_execute(sound_effect, the_bullet_sound, 0.35, 1);

		cooldown = 10;
	}

	cooldown += -1 *global.machine_attack_speed - global.speed_buff;


}
