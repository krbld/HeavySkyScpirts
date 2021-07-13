if(change_plane == false)
{
	explosion_sound = ds_list_find_value(player_controller.enemy_explosions, irandom_range(0, 4));
	
	script_execute(sound_effect, explosion_sound, 1, 0.6);
	
	if(global.endless_mode == true)
	{
		if(global.player_lives > 0)
		{
			instance_create_layer(384, 1000, "Instances", player_plane);
			
			shield = instance_create_layer(x + 0, y + 0, "Instances", shield_objct);
			with(shield) {
			real_shield = false;
			}
			
			instance_create_layer(-64, 1376, "Instances", death_enemy_destroyer);
		
		
			global.player_lives += -1;
			
			global.player_is_alive = false;
			
			with(player_controller) {
				alarm_set(0, 60);
				}
			
			script_execute(player_explosion);
			
			exit;
		}
	
		if(global.player_lives <= 0)
		{
			global.player_is_alive = false;
			global.player_lives += -1;
			global.stop_spawner = true;
			
			script_execute(player_explosion);
			instance_deactivate_object(opause);
			instance_activate_object(end_game_button);
			audio_stop_sound(global.fight_sound);
			audio_stop_sound(global.fight_loop_sound);
		}
	}
	
	if(global.endless_mode == false)
	
		{

		script_execute(player_explosion);
			
		with(player_controller) {
				alarm_set(1, 30);
				}
		}	
}