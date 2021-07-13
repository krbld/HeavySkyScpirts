//Game modes

if (global.endless_mode == false) {
	global.player_is_alive = false;
	alarm_set(0, 5);
}

if (global.endless_mode == true) {
	global.player_is_alive = true;
}


//Player_lives

global.player_lives = 2;
global.player_coins_to_lives = 0;


//Controlls

drag_offsetY = 0;
drag_offsetX = 0;



//Sounds
enemy_hit_sounds = ds_list_create();
ds_list_add (enemy_hit_sounds, so_enemy_hit_1, so_enemy_hit_2, so_enemy_hit_3, so_enemy_hit_4, so_enemy_hit_5);

player_bullets = ds_list_create();
ds_list_add(player_bullets, so_player_bullet1, so_player_bullet2, so_player_bullet3, so_player_bullet4, so_player_bullet5);

enemy_explosions = ds_list_create();
ds_list_add(enemy_explosions, so_enemy_explosion_1, so_enemy_explosion_2, so_enemy_explosion_3, so_enemy_explosion_4, so_enemy_explosion_5);

enemy_slugs = ds_list_create();
ds_list_add(enemy_slugs, so_enemy_shot_1, so_enemy_shot_2, so_enemy_shot_3, so_enemy_shot_4, so_enemy_shot_5);

drone_missiles = ds_list_create();
ds_list_add(drone_missiles, so_missile_launch_1, so_missile_launch_2, so_missile_launch_3, so_missile_launch_4, so_missile_launch_5);

missile_explosions = ds_list_create();
ds_list_add(missile_explosions, so_missile_explosion_1, so_missile_explosion_2, so_missile_explosion_3, so_missile_explosion_4, so_missile_explosion_5);

coin_pickup = ds_list_create();
ds_list_add(coin_pickup, so_coin_1, so_coin_2, so_coin_3, so_coin_4, so_coin_5);
