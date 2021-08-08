import processing.sound.*;
SoundFile song;


void setup(){
  size(500,500);
  stroke(0);
  strokeWeight(4);
  background(255,255,255); 
  song = new SoundFile(this, "engine.mp3");
}

int piscaEsq = #FF8C00;
int piscaDir = #FF8C00;
int farol = #FFFFFF;
int limpador1 = 115;
int limpador2 = 275;
int retDir = 30;
int retEsq = 470;
int retDir2 = 25;
int retEsq2 = 25;


void draw(){  
  
  stroke(0, 0, 0);
  strokeWeight(1.0);
  strokeCap(ROUND);
  
  //estrutura cima
  fill(240, 240, 236);
  rect(55,30, 390, 350, 100);
 
  //arcos
  fill(173, 216, 230);
  arc(55, 400, 390, 400, 3*PI/2, 2*PI);
  arc(445, 400, 390, 400, PI, 3*PI/2);

  line(54.999999, 200, 54.999999, 400);
  line(445, 200, 445, 400);
  
  //Janelas
  fill(230);
  rect(105, 80, 130, 110, 7);
  line(170, 190, limpador1, 100);
  rect(265, 80, 130, 110, 7);
  line(330, 190, limpador2, 100);
  
  //seta
  fill(piscaDir);
  ellipse(95, 230, 30,30);// Direita
  fill(piscaEsq);
  ellipse(410, 230, 30,30); // Esquerda
  
  //farol
  fill(farol);
  ellipse(125, 290, 45, 45);
  ellipse(380, 290, 45, 45);
  
  //Retrovisor direito
  fill(240, 240, 236);
  ellipse(retDir,150, retDir2,25);
  curve(50,250, 55,180,retDir,150, 45,180);
  
  //Retrovisor esquerdo
  ellipse(retEsq,150, retEsq2,25);
  curve(450,250, 445,180, retEsq,150, 455,180); 
  
  //para choque
  stroke(240, 240, 236);
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
  fill(0);
  strokeWeight(1.0);
  rect(200,390, 100,20);
   
  save("teste.jpg");
}

void keyPressed(){
    if(key == '4' || keyCode == LEFT){      
      piscaEsq = #FFFFFF;
    }  
    if(key == '6' || keyCode == RIGHT){
      piscaDir = #FFFFFF; 
    }
    
    if(key == 'a' || key == 'A'){
      piscaDir = #FFFFFF;
      piscaEsq = #FFFFFF;
    }
    
    if(key == 'f' || key == 'F'){
      farol = #E7FF5E;
    }
    
    if(key == 'm' || key == 'M'){
      song.play();
    }
    
    
    if(key == 'l' || key == 'L'){
      if(limpador1 == 115){
        while(limpador1 <= 214){
        limpador1 = limpador1 + 1;
        limpador2 = limpador2 + 1;
        }      
      }else if(limpador1 == 215){
        while(limpador1 >= 116){
        limpador1 = limpador1 - 1;
        limpador2 = limpador2 - 1;
        }
      }
    }
    
    if(key == 'r' || key == 'R'){
      if(retDir == 30){
        retDir = 50;
        retDir2 = 5;
        retEsq = 450;
        retEsq2 = 5;
      }else if(retDir == 50){
        retDir = 30;
        retDir2 = 25;
        retEsq = 470;
        retEsq2 = 25;
      }
    }
}
