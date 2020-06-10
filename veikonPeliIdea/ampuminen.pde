public void ampuminen(Pelaaja ampuja, Vektori vektori){
  vektori.x = mouseX - ampuja.x;
  vektori.y = mouseY - ampuja.y;
  vektori.pituus = sqrt(vektori.x * vektori.x + vektori.y * vektori.y);
  vektori.x /= vektori.pituus;
  vektori.y /= vektori.pituus;
}



public void piirraViiva(Ammus ammus){
  //print(ammus.alkuX, ammus.alkuY, ammus.loppuX, ammus.loppuY);
  line(ammus.alkuX, ammus.alkuY, ammus.loppuX, ammus.loppuY);
}



public void vektorinPaivitus(Ammus ammus, Boolean onTahtain){
  Vektori uusiVektori = new Vektori();
  vektorilista.add(uusiVektori);
    
  ampuminen(pelaaja1, uusiVektori);
  
  
  if(ammus.ekaKerta || onTahtain){
    ammus.laskeLoppuKoordinaatit();
    ammus.alkuX = pelaaja1.x;
    ammus.alkuY = pelaaja1.y;
    ammus.vektoriX = uusiVektori.x;
    ammus.vektoriY = uusiVektori.y;
    ammus.ekaKerta = false;
  }
  else{
    ammus.liikutaAmmusta();
    ammus.laskeLoppuKoordinaatit();
  }
  
  
  
  if(onTahtain){
    ammus.pituus = uusiVektori.pituus;
  } 
  else{
    ammus.laskeLoppuKoordinaatit();
  }
}
