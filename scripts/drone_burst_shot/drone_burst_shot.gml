function drone_burst_shot() {
	var l6DEF0C50_0 = false;
	l6DEF0C50_0 = instance_exists(drone);
	if(l6DEF0C50_0)
	{
		var l0245F5F4_0 = false;
		l0245F5F4_0 = instance_exists(enemy_parent);
		if(l0245F5F4_0)
		{
			if(distance_to_object(enemy_parent) <= 800)
			{
				if(cooldown <= 0)
				{
					timeline_index = burst_shot;
					timeline_loop = 0;
					timeline_running = 1;
			
					cooldown = global.drone_burst_attack_speed;
				}
		
				cooldown += -1;
			}
		}
	}


}
