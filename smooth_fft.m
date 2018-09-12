function [f, power] = smooth_fft(wave, Fs)
    wave = wave - mean(wave);
    Fn = Fs/2;
    L = length(wave);
    FTsig = fft(wave)/L;
    Fv = linspace(0,1,fix(length(FTsig)/2)+1)*Fn;
    Iv = 1:length(Fv);
    FTsiga = double(abs(FTsig(Iv))*2);
    sgf_sm = sgolayfilt(FTsiga,10,401);
    [u, d] = envelope(Fv);
    plot(Fv, FTsiga, Fv, u);
    f = Fv;
    power = sgf_sm;
    %plot(f,power);
end