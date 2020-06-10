public void keyPressed(){
  if(key == 'w' || key == 'S'){
    if(pelaaja1.eiYlos == false){
      pelaaja1.y -= pelaaja1.nopeus;
    }
  }
  
  if(key == 'd' || key == 'A'){
    if(pelaaja1.eiOikealle == false){
      pelaaja1.x += pelaaja1.nopeus;
    }
  }
  
  if(key == 's' || key == 'W'){
    if(pelaaja1.eiAlas == false){
    pelaaja1.y += pelaaja1.nopeus;
    }
  }
  
  if(key == 'a' || key == 'D'){
    if(pelaaja1.eiVasemmalle == false){
    pelaaja1.x -= pelaaja1.nopeus;
    }
  }
}


public void mousePressed(){
  if(mouseButton == LEFT){
    Ammus uusiAmmus = new Ammus();
    ammuslista.add(uusiAmmus);
    vektorinPaivitus(uusiAmmus, false);
  }
}
