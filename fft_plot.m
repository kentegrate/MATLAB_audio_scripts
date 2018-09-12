function [f,pxx] = fft_plot(data, Fs, target_freq, n)
if nargin==2
    target_freq = 1;
    n = 2^nextpow2(length(data));
end
if nargin==3
    n = 2^nextpow2(length(data));
end


%Y = fft(data,n);
%f = Fs*(0:(n/2))/n;
%P = abs(Y/n);
%P = 10*log10(P);
%disp(max(P));
% plot(f,P(1:n/2+1));

%[pxx,f] = periodogram(data,blackman(length(data)),n,Fs,'power');
[pxx,f] = periodogram(data,rectwin(length(data)),n,Fs,'power');
pxx = 10*log10(pxx);
min_idx = round((target_freq-0.1)/(Fs/(n)));
max_idx = round((target_freq+0.2)/(Fs/(n)));
%pwr=(max(pxx(min_idx:max_idx)));
plot(f,pxx);

%xlim([target_freq-100,target_freq+100]);
%disp(strcat('target: ',string(target_freq),'[Hz]'));
end
