function player_hmr() {
	var l585C4AFB_0 = false;
	l585C4AFB_0 = instance_exists(enemy_parent);
	if(l585C4AFB_0)
	{
		if(distance_to_object(enemy_parent) <= 1200)
		{
			if(cooldown <= 0)
			{
				instance_create_layer(player.x, player.y, "Instances", player_homing);
		
				the_bullet_sound = ds_list_find_value(player_bullets, irandom_range(0,4));
			
				script_execute(sound_effect, the_bullet_sound, 0.35, 1);
		
				cooldown = 10;
			}
	
			cooldown += -1 * global.player_homing_attack_speed - global.speed_buff;
		}
	}


}
