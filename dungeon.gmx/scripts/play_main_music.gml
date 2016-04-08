///play_main_music()

if (!audio_is_playing(MainSound)) {
    audio_stop_all();
    global.SFX = audio_play_sound(MainSound, 10, true);
}
