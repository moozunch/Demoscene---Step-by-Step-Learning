void setup(){
  size(600, 400);
  background(0);
}
//jadi cara kerjanya kan dia manggil terus terusan tiap detik tu si draw, jadi dia nimpa yang sebelumnya kan, jadi di draw kita buat fill background warna nggak hitam transparasi 100% biar nimpa nya jadi kayak ada efek trail
void draw(){
  fill(0, 25); //alpha25, makin kecil angkanya kan makin terang, jadi nggak nimpanya agak lama dia baru hilang sepenuhnya sehingga jadi efek trail nya lebih panjang.
  rect(0, 0, width, height);
  
    float x = frameCount % width;
    float y = height / 2 + sin(frameCount * 0.05) * 100;
    fill(255);
    noStroke();
    ellipse(x, y, 20, 20);
}
