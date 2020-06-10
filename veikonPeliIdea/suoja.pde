public void piirraSuoja(){
  fill(testiSuoja.vari[0], testiSuoja.vari[1], testiSuoja.vari[2]);
  rect(testiSuoja.x, testiSuoja.y, testiSuoja.leveys, testiSuoja.korkeus);
  fill(255, 255, 255);
}

public void kosketus(){
  if(pelaaja1.vasenReuna < testiSuoja.oikeaReuna && pelaaja1.vasenReuna > testiSuoja.vasenReuna && pelaaja1.alaReuna > testiSuoja.ylaReuna && pelaaja1.ylaReuna < testiSuoja.alaReuna){
      pelaaja1.eiVasemmalle = true;
  }
  else{
    pelaaja1.eiVasemmalle = false;
  }
  
  
  
  if(pelaaja1.oikeaReuna > testiSuoja.vasenReuna && pelaaja1.oikeaReuna < testiSuoja.oikeaReuna && pelaaja1.alaReuna > testiSuoja.ylaReuna && pelaaja1.ylaReuna < testiSuoja.alaReuna){
      pelaaja1.eiOikealle = true;  
  }
  else{
    pelaaja1.eiOikealle = false;
  }
  
  
  if(pelaaja1.ylaReuna < testiSuoja.alaReuna && pelaaja1.ylaReuna > testiSuoja.ylaReuna && pelaaja1.vasenReuna < testiSuoja.oikeaReuna && pelaaja1.oikeaReuna > testiSuoja.vasenReuna){
    pelaaja1.eiAlas = true;
  }
  else{
    pelaaja1.eiAlas = false;
  }
  
  
  if(pelaaja1.alaReuna > testiSuoja.ylaReuna && pelaaja1.ylaReuna < testiSuoja.ylaReuna && pelaaja1.vasenReuna < testiSuoja.oikeaReuna && pelaaja1.oikeaReuna > testiSuoja.vasenReuna){
     pelaaja1.eiAlas = true;
  }
  else{
    pelaaja1.eiAlas = false;
  }
}
