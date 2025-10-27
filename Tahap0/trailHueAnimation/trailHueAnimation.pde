void setup(){
  size(600, 400);
  colorMode(HSB, 255); //Hue-Saturation-Brightness. jadi pakai HSB bukan RGB
  background(0);
}
//jadi cara kerjanya kan dia manggil terus terusan tiap detik itu sampai 60x tu si draw, jadi dia nimpa yang sebelumnya kan, jadi di draw kita buat fill background warna nggak hitam transparasi 100% biar nimpa nya jadi kayak ada efek trail
void draw(){
  //trail effect
  fill(0, 25); //alpha25, makin kecil angkanya kan makin terang, jadi nggak nimpanya agak lama dia baru hilang sepenuhnya sehingga jadi efek trail nya lebih panjang.
  rect(0, 0, width, height);
  
  //basic movement
   float x = frameCount % width; //kan dia tiap frame bertambah terus 1 piksel perframe
   float y = (frameCount * 0.5) % height; //bertambah 0.5 piksel perframe
//   Δx = +1 per frame
//   Δy = +0.5 per frame
//   kalau digabungkan ke sistem kordinat (x, y) alias ellipse (x, y) jadi punya kemiringan = Δy / Δx = 0.5 / 1 = 0.5
//   setiap gerakan 1 ke kanan → turun 0.5 ke bawah →
//   Karena ada % width dan % height, maka:
//   Begitu x mencapai 600, dia kembali ke 0.
//   Begitu y mencapai 400, dia kembali ke 0 juga.
   
   //color change by time
   float hue = (frameCount * 2) % 255; //kalau framecount aja dia berubah warna tiap frame aja, *2 untuk mempercepat dan % 255 supaya ketika udah warna puncaknya dia balik lagi nggak stuck ke warna terakhir
   fill(hue, 255, 255);
   
   
   noStroke();
   
   
   float size = 10 + abs(sin(frameCount * 0.1)) * 20; //kan jadi tiap frame bakal dikali 0.1 tapi kan sinus itu -1 sampai 1 jadi pas 0 kecil lah dia dan 1 besar lah dia, -1 juga karena abs kan. tapi ingat dikali 20 supaya ukurannya nggak kecil x 1 kan. jadi dari 10 (kecil) - 30.
   ellipse(x, y, size , size*2); //jadi pakai size yang dibuat sendiri
   ellipse(x, height - y, size , size*2); //mirror effect, dari bawah mulainya
   ellipse(x / 2, y*2, size , size*2); 
   ellipse(x / 2, height - (y*2), size , size*2); 
}
