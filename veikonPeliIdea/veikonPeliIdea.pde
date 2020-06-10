import java.util.ArrayList;

int leveys;
int korkeus;
int pelaajanKorkeus;
int pelaajanLeveys;

ArrayList<Ammus> ammuslista = new ArrayList<Ammus>();
ArrayList<Vektori> vektorilista = new ArrayList<Vektori>();

Pelaaja pelaaja1 = new Pelaaja();
Ammus tahtaysVektori = new Ammus();
Suoja testiSuoja = new Suoja();



public class Pelaaja {
  float x = 100;
  float y = 100;
  float nopeus = 5;
  float vasenReuna;
  float oikeaReuna;
  float ylaReuna;
  float alaReuna;
  
  Boolean eiVasemmalle = false;
  Boolean eiOikealle = false;
  Boolean eiYlos = false;
  Boolean eiAlas = false;
  
  public void laskeReunat(){
    this.vasenReuna = x - pelaajanLeveys/2;
    this.oikeaReuna = x + pelaajanLeveys/2;
    this.ylaReuna = y - pelaajanKorkeus/2;
    this.alaReuna = y + pelaajanKorkeus/2;
  }
}



public class Ammus {
  float alkuX;
  float alkuY;
  float loppuX;
  float loppuY;
  float pituus = 100;
  float dmg;
  float nopeus = 5;
  
  float vektoriX;
  float vektoriY;
  
  Boolean ekaKerta = true;
  
  public void laskeLoppuKoordinaatit(){
    this.loppuX = alkuX + pituus*vektoriX;
    this.loppuY = alkuY + pituus*vektoriY;
  }
  
  public void liikutaAmmusta(){
    this.alkuX = alkuX + vektoriX*nopeus;
    println(alkuX);
    this.alkuY = alkuY + vektoriY*nopeus;
  }
  
}



public class Vektori {
  float x;
  float y;
  float pituus;
}



public class Suoja {
  float x = 200;
  float y = 100;
  float leveys = 10;
  float korkeus = 100;
  float[] vari = {200, 200, 200};
  
  float vasenReuna;
  float oikeaReuna;
  float ylaReuna;
  float alaReuna;
  
   public void laskeReunat(){
    this.vasenReuna = x - leveys/2;
    this.oikeaReuna = x + leveys/2;
    this.ylaReuna = y - korkeus/2;
    this.alaReuna = y + korkeus/2;
  }
  
}



void setup(){
  fullScreen();
  colorMode(RGB, 255);
  rectMode(CENTER);
  leveys = width;
  korkeus = height;
  pelaajanKorkeus = korkeus/16;
  pelaajanLeveys = leveys/26;
}



void draw(){
  background(89, 199, 30);
  rect(pelaaja1.x, pelaaja1.y, pelaajanLeveys, pelaajanKorkeus);
  piirraSuoja();
  pelaaja1.laskeReunat();
  testiSuoja.laskeReunat();
  kosketus();
  
  if(ammuslista != null){
    for(Ammus ammus : ammuslista){
      piirraViiva(ammus);
    }
  }
  
  vektorinPaivitus(tahtaysVektori, true);
  piirraViiva(tahtaysVektori);
  
}
