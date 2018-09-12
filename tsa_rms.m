function ans_rms = tsa_rms(wavedata, Fs, Fmin, Fmax)
ans_freqs = 1:1:Fmax;
ans_rms = zeros(1,Fmax);
for f0 = 1:Fmax
    ans_rms(f0) = -100;
end

for f0 = Fmin:Fmax
    t = 0:1/Fs:size(wavedata,1)/Fs-1/Fs;
    tPulse = 0:1/f0*100:max(t);
    ta = tsa(wavedata,Fs,tPulse);
    ta = ta - mean(ta);
    [pxx, f] = periodogram(ta,hamming(length(ta)),length(ta),length(ta)/100,'power');
    ans_rms(f0) = 10*log10(pxx(101))+140;
end
plot(ans_freqs, ans_rms);