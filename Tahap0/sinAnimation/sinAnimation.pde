void setup(){
 size(600, 400);
 noStroke();
 background(0); //hitam, gunanya nimpa sebelumnya
}
//basicnya btw ini 60fps, jadi 1 framecount = 1 detik = 60fps. 
//kenapa bisa bergerak, karena processing otomatis memanggil draw terus menerus

void draw(){
  float x = frameCount % width; // posisi X si lingkaran akan bergerak ke kanan terus, dan begitu sampai tepi kanan layar, dia balik ke kiri lagi (karena nilainya kembali ke 0).
  float y = height / 2 + cos(frameCount * 0.05)*200; //sin kan tau naik turun, height / 2 supaya ditengah vertically. 0 kan tengah, hasil sinus selalu naik-turun dari -1 (bawah) sampai 1. * 100 → seberapa tinggi gelombang itu naik-turun (amplitudo).
  fill(255); //color
  ellipse(x, y, 20, 20); //ellipse(posisiX, posisiY, lebar_pixel, tinggi_pixel);
}
