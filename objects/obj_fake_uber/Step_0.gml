// FAKE UBER STEP EVENT
if (leaving){
	x += drive_speed;
	
	if(!audio_is_playing(insertaudiofilehere)){
		audio_play_sound(insertaudiofilehere,1,false);
	}
	
	// DESTROY THE CAR WHEN ITS OFF SCREEN (good game dev moves amirite)
	if ( x > room_width + sprite_width){
		instance_destroy();
	}
}
