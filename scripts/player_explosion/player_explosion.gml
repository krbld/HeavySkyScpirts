function player_explosion() {

	the_loop_length = 8;

	while ((the_loop_length > 0)) {
		the_expl = instance_create_layer(x + irandom_range(-48, 48), y + irandom_range(-48, 48), "Instances", oexplosion);
	
		the_loop_length += -1;
	
		with(the_expl) {
			image_xscale = 1.2;
			image_yscale = 1.2;
		}
	}

	white_boom_var = instance_create_layer(384, 650, "Instances", white_boom);

	with(white_boom_var) {
		image_alpha = 0.05;
	}


}
