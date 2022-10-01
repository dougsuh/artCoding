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
  // San to ggi
  oneNote(wave, 196.0, 2.0, 0.0, SampleRate);
  oneNote(wave, 164.8, 1.0, 2.0, SampleRate);
  oneNote(wave, 164.8, 1.0, 3.0, SampleRate);
  // to ggi ya
  oneNote(wave, 196.0, 1.0, 4.0, SampleRate);
  oneNote(wave, 164.8, 1.0, 5.0, SampleRate);
  oneNote(wave, 130.8, 2.0, 6.0, SampleRate);
  // eo di rr
  oneNote(wave, 146.0, 2.0, 8.0, SampleRate);
  oneNote(wave, 164.8, 1.0, 10.0, SampleRate);
  oneNote(wave, 146.8, 1.0, 11.0, SampleRate);
  // ga nue nya
  oneNote(wave, 130.8, 1.0, 12.0, SampleRate);
  oneNote(wave, 164.8, 1.0, 10.0, SampleRate);
  oneNote(wave, 196.8, 2.0, 11.0, SampleRate);
  saveBytes("myWave.wav", wave);
}
