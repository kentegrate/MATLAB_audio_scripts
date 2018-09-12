function wave = sine_wave(f, Fs, t, db)
t = 0:1/Fs:t-1/Fs;
wave = sin(2*pi*f*t) * 10^(db/20);
end