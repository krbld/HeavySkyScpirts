global.player_coins_to_lives += 250;

with(other) {
global.coins_amount += coin_value;

}

with(other) instance_destroy();

coin_sound = ds_list_find_value(player_controller.coin_pickup, irandom_range(0,4));
sound_effect(coin_sound, 0.12, 0.88);