void setup(){
  size(500,500);
  stroke(0);
  strokeWeight(4);
  background(255,255,255); 
}

void draw(){

  //Teto
  noFill();
  arc(250, 50, 350, 50, PI, TWO_PI);
  
  //Lateral
  //fill(153,204,50);
  line(75, 50, 55, 105);
  line(425, 50, 445, 105);
  line(55,105, 55,385);
  line(445, 105, 445, 385);
  
  //Janelas
  fill(230);
  rect(105, 80, 130, 110, 7);
  line(170, 190, 115, 100);
  rect(265, 80, 130, 110, 7);
  line(330, 190, 275, 100);
  
  //seta
  fill(204, 102, 0);
  ellipse(95, 230, 30,30);
  ellipse(410, 230, 30,30);
  
  //farol
  fill(255);
  ellipse(125, 290, 45, 45);
  ellipse(380, 290, 45, 45);
  
  //Detalhe em V
  line(55,200, 105, 200);
  line(105, 200, 250, 355);
  line(445, 200, 395, 200);
  line(395, 200, 250, 355);
  
  //Retrovisor direito
  ellipse(30,150, 25,25);
  curve(50,250, 55,180,30,150, 45,180);
  
  //Retrovisor esquerdo
  ellipse(470,150, 25,25);
  curve(450,250, 445,180, 470,150, 455,180); 
  
  //Parachoque
  arc(250, 385, 390, 30, PI, TWO_PI);
  arc(250, 385, 390, 30, 0, PI);
  line(55,385, 105,345);
  line(445,385, 395,345);
  line(105,345, 395,345);
  
  //Placa
  fill(0);
  rect(170,385, 160,25);
}
