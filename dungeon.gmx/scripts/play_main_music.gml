///play_main_music()

if (!audio_is_playing(TemporaryMainSound)) {
    audio_stop_all();
    global.SFX = audio_play_sound(TemporaryMainSound, 10, true);
}
