function fight_music() {
	ingame_music = ds_list_create()
	ds_list_add(ingame_music, fight_theme_01_main, fight_theme_02_main)
	current_fight_music = ds_list_find_value(ingame_music, irandom_range(0,1));

	while (global.fight_sound = current_fight_music)
	{
		current_fight_music = ds_list_find_value(ingame_music, irandom_range(0,1));
	}

	switch (current_fight_music)

		{
			case fight_theme_01_main:
				game_music_loop = fight_theme_01_loop
				break;
			
			case fight_theme_02_main:
				game_music_loop = fight_theme_02_loop
				break;
		}

	global.fight_sound = current_fight_music;
	global.fight_loop_sound = game_music_loop;

	if (!audio_is_playing(current_fight_music))
	{
		if (!audio_is_playing(game_music_loop))
		{
			audio_play_sound(current_fight_music, 0, 0)
		}
	}


}
