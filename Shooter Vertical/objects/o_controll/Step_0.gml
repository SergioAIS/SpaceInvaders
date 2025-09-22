if (showLevel) {
    level_timer--;

    // cuando el tiempo acaba
    if (level_timer <= 0) {
        showLevel = false;
        // aquí puedes iniciar la wave
        start_wave(level);
    }
}
