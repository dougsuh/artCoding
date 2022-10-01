// write/read a wave file 
int SampleRate,ByteRate;
short NumChannels;
void setup() {
  // Open a wave file and read its binary data
  byte wave[] = loadBytes("Beatles-LetItBe-wav_30s.wav");
  print("file size " + wave.length + "\n");
  SampleRate = byteArray2int(wave,24);
  ByteRate = byteArray2int(wave,28);
  NumChannels = byteArray2short(wave,22);
  print(SampleRate + " " + ByteRate+ " " + NumChannels);
  // 1st
  oneNote(wave, 164.8, 0.5, 0.0, SampleRate);
  oneNote(wave, 164.8, 0.5, 0.5, SampleRate);
  oneNote(wave, 196.0, 1.0, 1.0, SampleRate);
  oneNote(wave, 207.7, 1.0, 2.0, SampleRate);
  // 2nd
  oneNote(wave, 261.6, 2.0, 3.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 5.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 6.0, SampleRate);
  oneNote(wave, 196.0, 4.0, 7.0, SampleRate);
  // 3rd
  oneNote(wave, 196.0, 2.0, 11.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 13.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 14.0, SampleRate);
  oneNote(wave, 261.6, 1.0, 15.0, SampleRate);
  oneNote(wave, 220.0, 1.0, 16.0, SampleRate);
  oneNote(wave, 261.6, 1.5, 15.0, SampleRate);
  oneNote(wave, 261.6, 0.5, 16.5, SampleRate);
  // 4th  
  oneNote(wave, 261.6, 1.0, 17.0, SampleRate);
  oneNote(wave, 164.8, 0.5, 18.0, SampleRate);
  oneNote(wave, 164.8, 0.5, 18.5, SampleRate);
  oneNote(wave, 196.0, 1.0, 19.0, SampleRate);
  oneNote(wave, 220.0, 1.0, 20.0, SampleRate);
  // 5th
  oneNote(wave, 261.6, 2.0, 21.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 23.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 24.0, SampleRate);
  oneNote(wave, 196.0, 4.0, 25.0, SampleRate);  
  // 6th
  oneNote(wave, 196.0, 2.0, 29.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 31.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 32.0, SampleRate);
  oneNote(wave, 261.6, 1.0, 33.0, SampleRate);
  oneNote(wave, 220.0, 1.0, 34.0, SampleRate);
  oneNote(wave, 261.6, 1.5, 35.0, SampleRate);
  oneNote(wave, 261.6, 0.5, 36.5, SampleRate);
  // 7th
  oneNote(wave, 261.6, 1.0, 37.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 38.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 39.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 40.0, SampleRate);
  // 8th
  oneNote(wave, 293.7, 6.0, 41.0, SampleRate);
  oneNote(wave, 329.6, 1.0, 47.0, SampleRate);
  oneNote(wave, 196.0, 1.0, 48.0, SampleRate);
  // 9th  
  oneNote(wave, 220.0, 1.0, 49.0, SampleRate);
  oneNote(wave, 293.7, 1.0, 50.0, SampleRate);
  oneNote(wave, 246.9, 1.0, 51.0, SampleRate);
  oneNote(wave, 220.0, 1.0, 52.0, SampleRate);
  oneNote(wave, 196.0, 4.0, 53.0, SampleRate);
  move(wave,0,57, SampleRate);
  clearUp(wave,114, SampleRate,wave.length);
  saveBytes("myWave.wav", wave);
}
