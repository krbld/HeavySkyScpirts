function sound_effect(argument0, argument1, argument2) {
	the_name = argument0;
	the_gain = argument1;
	the_pitch = argument2;


	audio_play_sound(the_name, 0, 0);
	audio_sound_gain(the_name, the_gain, 0);
	audio_sound_pitch(the_name, the_pitch);


}
