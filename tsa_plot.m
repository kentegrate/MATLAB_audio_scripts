function ta = tsa_plot(wavedata, Fs, target_freq)
t = 0:1/Fs:size(wavedata,1)/Fs-1/Fs;
tPulse = 0:1/target_freq:max(t);
ta = tsa(wavedata,Fs,tPulse);
ta = ta - mean(ta);
plot(ta);
end