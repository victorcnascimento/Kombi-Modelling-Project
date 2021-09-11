void setup(){
  size(500,500, P3D);
  stroke(0);
  strokeWeight(4);
  
}

int piscaEsq = #FF8C00;
int piscaDir = #FF8C00;
int farol = #FFFFFF;
int limpador1 = 115;
int limpador2 = 275;
int retDir = 50;
int retEsq = 450;
int retDir2 = 25;
int retEsq2 = 25;

void draw(){
  
  background(255); 
  //lights();
  //ambientLight(255, 255, 255);
  //directionalLight(248,246,135, mouseX, mouseY, 0);
  //spotLight(50, 240, 100, mouseX, mouseY, 400, 0, 0, -1, PI/8, 100);
  //pointLight(200, 200, 0, mouseX, mouseY, 100);
  
  
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0); // Câmera
  
  ortho(-width/2, width/2, -height/2, height/2); // Perspectiva Ortográfica
  
  translate(250,250,0);
  fill(250,250,250);
  box(350, 400, -400);
  
  translate(-250,-250, 200);
  //Janelas
  fill(230);
  rect(105, 80, 130, 110, 7);
  line(170, 190, limpador1, 100);
  rect(265, 80, 130, 110, 7);
  line(330, 190, limpador2, 100);
  
  //arcos
  noStroke();
  fill(173, 216, 230);
  arc(75, 400, 390, 400, 3*PI/2, 2*PI);
  arc(425, 400, 390, 400, PI, 3*PI/2);
  stroke(0);
  
  translate(0, 20, 0);
  //seta
  fill(piscaDir);
  ellipse(105, 230, 30,30);// Direita
  fill(piscaEsq);
  ellipse(395, 230, 30,30); // Esquerda
  
  
  //farol
  fill(farol);
  ellipse(125, 290, 45, 45);
  ellipse(380, 290, 45, 45);
  
  //Retrovisor direito
  fill(240, 240, 236);
  ellipse(retDir,150, retDir2,25);
  curve(50,250, 75,180,retDir,150, 45,180);
  
  //Retrovisor esquerdo
  ellipse(retEsq,150, retEsq2,25);
  curve(425,250, 425,180, retEsq,150, 455,180); 
  
  //para choque
  stroke(0);
  strokeWeight(30.0);
  line(55, 400, 445, 400);
  
  strokeWeight(10.0);
  line(100, 350, 395, 350);
  line(100, 350, 100, 375);
  line(395, 350, 395, 375);
  
  strokeWeight(20.0);
  line(150, 345, 150, 415);
  line(345, 345, 345, 415);
  
  //Placa
  fill(255);
  strokeWeight(1.0);
  rect(200,390, 100,20);
}
