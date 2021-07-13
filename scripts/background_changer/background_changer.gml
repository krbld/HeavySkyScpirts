function background_changer() {
	if (layer_background_get_sprite(the_background) != the_background_sprite)
	{
		if (the_background_alpha >= 0)

		{
			layer_background_alpha(the_background, changevalue1);
			the_background_alpha = layer_background_get_alpha(the_background);
			changevalue1 += -0.0025;
		}
	
		if (the_background2_alpha <= 1)

		{
			layer_background_alpha(the_background2, changevalue2);
			the_background2_alpha = layer_background_get_alpha(the_background2);
			changevalue2 += 0.0025;
		}
		if (the_background2_alpha >= 1)
				{
					triggered = true;
				}
	}

	else 
	{
			the_background_sprite = ds_list_find_value(background_list, irandom_range(0, 1));	
	}


}
