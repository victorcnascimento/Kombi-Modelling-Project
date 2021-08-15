import processing.sound.*;
SoundFile song;


void setup(){
   frameRate(5);
  size(500,500);
  stroke(0);
  strokeWeight(4);
  background(255,255,255); 
  song = new SoundFile(this, "engine.wav");
}

int piscaEsq = #FFFFFF;
int piscaDir = #FFFFFF;
int farol = #FFFFFF;
int limpador1 = 115;
int limpador2 = 275;
int corBorda = #000000;
int corRet = #F0F0EC;
int corBordaF = #FFFFFF;
int corRetF = #FFFFFF;

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
  
  //pisca esquerda
  if(flagPiscaEsq == 1){
    
    if(flagCor == 1){
      piscaEsq = #FFFFFF;
      flagCor = 0;
    }
    else{
      piscaEsq = #FF8C00;
      flagCor = 1;
    }
  }
  
  //pisca direita
  if(flagPiscaDir == 1){
    
    if(flagCor == 1){
      piscaDir = #FFFFFF;
      flagCor = 0;
    }
    else{
      piscaDir = #FF8C00;
      flagCor = 1;
    }
  }
  
  if(flagLimpa == 1){
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
  
   if(flagPiscaAlerta == 1){
    
    if(flagCor == 1){
      piscaDir = #FF8C00;
      piscaEsq = #FF8C00;
      flagCor = 0;
    }
    else{
      piscaDir = #FFFFFF;
      piscaEsq = #FFFFFF;
      flagCor = 1;
    }
  }

  //Retrovisor direito
  stroke(corBorda);
  strokeWeight(1);
  fill(corRet);
  ellipse(30,150, 25,25);
  curve(50,250, 55,180,30,150, 45,180);
  
  //Retrovisor esquerdo
  ellipse(470,150, 25,25);
  curve(450,250, 445,180, 470,150, 455,180);
  
  //Retovisor direito fechado
  stroke(corBordaF);
  strokeWeight(1);
  fill(corRetF);
  ellipse(50,150, 5,25);
  curve(50,250, 55,180,50,150, 45,180);
  
  //Retrovisor esquerdo fechado
  ellipse(450,150, 5,25);
  curve(450,250, 445,180, 450,150, 455,180); 
   
  
   
  save("teste.jpg");
}
int flagCor = 1;
int flagPiscaEsq = 0;
int flagPiscaDir = 0;
int flag = 0;
int flagLimpa = 0;
int flagPiscaAlerta = 0;

void keyPressed(){
    if(key == '4' || keyCode == LEFT){  
      flagPiscaDir = 0;
      piscaDir = #FFFFFF;
       if(flagPiscaEsq == 0){
         flagPiscaEsq = 1;
       }
       else{
         flagPiscaEsq = 0;
         piscaEsq = #FFFFFF;
       }
    } 
    if(key == '6' || keyCode == RIGHT){
      flagPiscaEsq = 0;
      piscaEsq = #FFFFFF;
      if(flagPiscaDir == 0){
         flagPiscaDir = 1;
       }
       else{
         flagPiscaDir = 0;
         piscaDir = #FFFFFF;
       }
    }
    
    if(key == 'a' || key == 'A'){
      if(flagPiscaAlerta == 1){
         flagPiscaAlerta = 0;
       }
       else{
         flagPiscaAlerta = 1;
         piscaEsq = #FFFFFF;
         piscaDir = #FFFFFF;       
       }
    }
    
    if(key == 'f' || key == 'F'){
      if(flag == 0){
         farol = #FFFFFF;
       flag = 1;
       }
       else{
         farol = #E7FF5E;
         flag = 0;
       }
    }
    
    if(key == 'm' || key == 'M'){
      song.stop();
      song.play();
    }
    
    
    if(key == 'l' || key == 'L'){
      
      if(flagLimpa == 0){
        flagLimpa = 1;
      }else{
        flagLimpa = 0;         
      }
    }
    
    if(key == 'r' || key == 'R'){
      if(corRet == #F0F0EC){
        corRet = #FFFFFF;
        corBorda = #FFFFFF;
        corRetF = #F0F0EC;
        corBordaF = #000000;
      }else{
        corRet = #F0F0EC;
        corBorda = #000000;
        corRetF = #FFFFFF;
        corBordaF = #FFFFFF;
      }
    }
}
