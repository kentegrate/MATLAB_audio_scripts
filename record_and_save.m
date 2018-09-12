function wavedata = record_and_save(filename, Fs, duration)
   recorder = audiorecorder(Fs,24,1,5);
   recordblocking(recorder,duration);
   wavedata = getaudiodata(recorder);
   save(filename,'wavedata');
end