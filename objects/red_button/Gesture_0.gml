if(the_button_type == "yes")
{
	var l711D8D6B_0 = upgrade_this;
	switch(l711D8D6B_0)
	{
		case suplane_01:
			if(global.plane01_upgrade < 5)
			{
				global.machine_attack_speed += 0.08;
				global.plane01_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("plr", "mchngn_atk_spd", global.machine_attack_speed);
			
				ini_write_string("upgr", "pln1", global.plane01_upgrade);
			
				ini_close();
			}
			break;
	
		case suplane_02:
			if(global.plane02_upgrade < 5)
			{
				global.spreader_attack_speed += 0.09;
				global.plane02_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("plr", "sprdr_atck_spd", global.spreader_attack_speed);
			
				ini_write_string("upgr", "pln2", global.plane02_upgrade);
			
				ini_close();
			}
			break;
	
		case suplane_03:
			if(global.plane03_upgrade < 5)
			{
				global.slug_attack_speed += 0.1;
				global.plane03_upgrade += 1;
				global.player_homing_attack_speed += 0.09;
			
				ini_open("savedata.ini");
			
				ini_write_real("plr", "slg_atckspd", global.slug_attack_speed);
			
				ini_write_string("plr", "hmng_attckspd", global.player_homing_attack_speed);
			
				ini_write_string("upgr", "pln3", global.plane03_upgrade);
			
				ini_close();
			}
			break;
	
		case sudrone_01:
			if(global.drone01_upgrade < 5)
			{
				global.drone_burst_attack_speed += -10;
				global.drone01_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("drn", "brst_speed", global.drone_burst_attack_speed);
			
				ini_write_string("upgr", "drn1", global.drone01_upgrade);
			
				ini_close();
			}
			break;
	
		case sudrone_02:
			if(global.drone02_upgrade < 5)
			{
				global.homing_missile_attack_speed += -10;
				global.drone02_upgrade += 1;
				global.drone_shrapnel_attack_speed += -10;
			
				ini_open("savedata.ini");
			
				ini_write_real("drn", "hmng_msl_atck_spd", global.homing_missile_attack_speed);
			
				ini_write_real("drn", "shrpnl_atck_spd", global.drone_shrapnel_attack_speed);
			
				ini_write_string("upgr", "drn2", global.drone02_upgrade);
			
				ini_close();
			}
			break;
	
		case sudrones:
			if(global.drones_upgrade < 5)
			{
				global.drone_duration += 100;
				global.drones_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("pckp", "drn_drtn", global.drone_duration);
			
				ini_write_real("upgr", "drns", global.drones_upgrade);
			
				ini_close();
			}
		
			if(global.drones_upgrade >= 4)
			{
				global.drone_count = 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("drn", "drn_cnt", global.drone_count);
			
				ini_close();
			}
			break;
	
		case supowerup:
			if(global.powerup_upgrade < 5)
			{
				global.speed_buff_duration += 50;
				global.powerup_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("pln", "spd_bff_drtn", global.speed_buff_duration);
			
				ini_write_real("upgr", "pwrp", global.powerup_upgrade);
			
				ini_close();
			}
			break;
	
		case sushield:
			if(global.shield_upgrade < 5)
			{
				global.shield_duration += 25;
				global.shield_upgrade += 1;
			
				ini_open("savedata.ini");
			
				ini_write_real("pckp", "shld_drtn", global.shield_duration);
			
				ini_write_real("upgr", "shld", global.shield_upgrade);
			
				ini_close();
			}
			break;
	}

	global.coins_amount += -global.the_price;

	ini_open("savedata.ini");

	ini_write_real("ecnm", "cns", global.coins_amount);

	ini_close();

	global.upgrade_on = true;

	with(chooser) instance_destroy();
}

if(the_button_type == "no")
{
	global.upgrade_on = true;

	with(chooser) instance_destroy();
}