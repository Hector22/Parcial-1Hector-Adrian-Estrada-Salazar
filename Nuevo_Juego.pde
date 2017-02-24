Mano Papel;
Mano Tijeras;
Mano Piedra;
Mano Spock;
Mano Lagarto;
Mano Sheldon;
int pantalla = 0;
int hp;

void setup(){
  background(100);
  size(900,700);
          
    Papel = new Mano("Papel",10,6,12,0);
    Tijeras = new Mano("Tijeras",8,5,10,1);
    Piedra = new Mano("Piedra",7,4,8,2);
    Spock = new Mano("Spock",5,3,6,3);
    Lagarto = new Mano("Lagarto",3,2,4,4);
    Sheldon = new Mano("Sheldon",1,1,2,5);
  }

void draw(){
  println(pantalla);
    switch(pantalla){      
    case 0:
    background(0);
    textSize(50);
    textAlign(CENTER);
    fill(50);
    text("Piedra Papel o Tijeras", 450, 200);
    fill(50);
    text("Lagarto Spock Sheldon", 450, 300);
    fill(255);
    textSize(15);
    textAlign(CENTER);
    text("Da clic para continuar", 450, 575);
    if (mousePressed == true){
    pantalla = 1;
    }
    break;
    
    case 1:
    background(0);
    textSize(30);
    fill(#FF0000);
    text("Selecciona a tu jugador", 450, 50);
    textSize(20);
    fill(255);
    text("Papel", 150, 100); 
    textSize(15); 
    text("Presiona A", 150, 120); 
    Papel.dibujar(); 
    if (keyPressed){
    if (key == 'a' || key == 'A'){
     pantalla = 2; 
    }
   }
    textSize(20);
    fill(255);
    text("Tijeras", 450, 100); 
    textSize(15); 
    text("Presiona B", 450, 120); 
    Tijeras.dibujar();
    if (keyPressed){
    if (key == 'b' || key == 'B'){
     pantalla = 2;
   }
  }
    textSize(20);
    fill(255);
    text("Piedra", 750, 100); 
    textSize(15); 
    text("Presiona C", 750, 120);
    Piedra.dibujar();
    if (keyPressed){
    if (key == 'c' || key == 'C'){
     pantalla = 2;
   }
  }
    textSize(20);
    fill(255);
    text("spock", 150, 380); 
    textSize(15); 
    text("Presiona D", 150, 400); 
    Spock.dibujar();
    if (keyPressed){
    if (key == 'd' || key == 'D'){
     pantalla = 2;
   }
  }
    textSize(20);
    fill(255);
    text("Lagarto", 450, 380); 
    textSize(15); 
    text("Presiona E", 450, 400); 
    Lagarto.dibujar();
    if (keyPressed){
    if (key == 'e' || key == 'E'){
     pantalla = 2;
   }
  }
    textSize(20);
    fill(255);
    text("Sheldon", 750, 380); 
    textSize(15); 
    text("Presiona F", 750, 400); 
    Sheldon.dibujar();
    if (keyPressed){
    if (key == 'f' || key == 'F'){
     pantalla = 2;
   }
  }
   break;

    case 2:
    background(0);
    textSize(24);
    textAlign(CENTER);
    fill(50);
    text("Batalla", 450, 100);
    textSize(24);
    textAlign(CENTER);
    fill(50);
    text("INSTRUCCIONES:",450,300);
    textSize(24);
    textAlign(CENTER);
    fill(50);
    text("Presiona P para hacer daño",450,330);
    fill(255);
    textSize(24);
    textAlign(CENTER);
    text("Da clic para comenzar",450,575);
    if (mousePressed == true){
      pantalla = 3;
    }
    break;
    
    case 3:
    background(100);
    textSize(24);
    textAlign(CENTER);
    fill(#3200FF);
    text("Batalla",450,100);
    textSize(30);
    fill(255);
    text("HP "+"100/100",100,50);
    textSize(30);
    fill(255);
    text("HP "+"100/100",800,50);
    if (key == 'a' || key == 'A'){
      translate(500,230);    
      Papel.dibujar(); 
      translate(-1000,-10);    
      Piedra.dibujar();
   }
    if (key == 'b' || key == 'B'){
      translate(-200,210);
      Tijeras.dibujar();
      translate(700,-280);
      Spock.dibujar();      
   }  
    if (key == 'c' || key == 'C'){
      translate(-100,230);
      Piedra.dibujar();
      translate(-100,-290);
      Lagarto.dibujar();
   }
    if (key == 'd' || key == 'D'){
      translate(500,-60);
      Spock.dibujar();
      translate(-700,280);
      Tijeras.dibujar();
   }
    if (key == 'e' || key == 'E'){
      translate(-180,-50);
      Lagarto.dibujar();
      translate(90,-10);
      Sheldon.dibujar();
   }
   if (key == 'f' || key == 'F'){
      translate(-500,-65);         
      Sheldon.dibujar();
      translate(1000,300);
      Papel.dibujar(); 
   }
   if(key =='p' || key=='P'){
    background(0);
    textSize(24);
    textAlign(CENTER);
    fill(150);
    text("Pantalla de batalla",450,100);
    textSize(30);
    fill(255);
    text("HP "+"0/100",100,50);
    textSize(30);
    fill(255);
    text("HP "+"100/100",800,50);
    textSize(100);
    fill(150);
    text("Has Ganado",450,300);
    text("BAZINGA",450,400);
    textSize(24);
    textAlign(CENTER);
    fill(255);
    text("Para reiniciar favor de presionar r", 450, 575);
    } 
    if (keyPressed){
     if(key =='r' || key =='R'){
      pantalla = 0;
     break;
   }
  }
}
}

class Mano {
  String nombre;
  int hp;
  int ataque;
  int defensa ;
  int dibujo;
  
  Mano(String nombre_, int hp_, int ataque_, int defensa_, int dibujo_){
  nombre = nombre_;
  hp = hp_;
  ataque = ataque_;
  defensa = defensa_;
  dibujo = dibujo_;
}

void dibujar(){
    switch(dibujo){
      case 0:  //Papel  
      pushMatrix();
      translate(140,130);
      scale(.5);
  rect(0,20,10,80);
  rect(10,20,70,10);
  rect(80,20,10,80);
  rect(10,90,70,10);
  
  rect(20,0,10,10);
  rect(10,10,10,10);
  rect(30,10,10,10);
  rect(50,10,10,10);
  rect(60,0,10,10);
  rect(70,10,10,10);
  
  rect(30,100,10,10);
  rect(30,110,10,10);
  rect(50,100,10,10);
  rect(50,110,10,10);
      popMatrix();
      break;
      
      case 1:   //Tijeras
      pushMatrix();
      translate(430,130);
      scale(.5);
      fill(150);
  rect(10,10,10,10);
  rect(20,20,10,10);
  rect(30,30,10,10);
  rect(40,40,10,10);
  rect(80,10,10,10);
  rect(70,20,10,10);
  rect(50,40,10,10);
  rect(60,30,10,10);
  rect(40,50,10,10);
  rect(50,50,10,10);
      
     
      popMatrix();
      break;
      
      case 2:   //Piedra
      pushMatrix();
      translate(700,130);
      scale(.5);
      fill(0);
  rect(30,0,20,10);
  rect(10,10,20,10);
  rect(0,20,10,20);
  rect(10,40,70,10);
  rect(50,10,30,10);
  rect(80,20,10,20);
  rect(30,50,10,10);
  rect(50,50,10,10);
  
  fill(97,68,22);
  rect(30,10,20,10);
  rect(10,20,70,20);
      popMatrix();
      break;
            
      case 3:   //Spock
      pushMatrix();
      translate(100,270);
      scale(.5);
      //cabello
  fill(0);
  rect(30,10,40,10);
  rect(20,20,60,10);
  rect(10,30,80,10);
  rect(10,40,10,20);
  rect(80,40,10,20);
  
  //piel
  fill(230,176,112);
  rect(20,40,60,10);
  rect(20,50,10,30);
  rect(40,50,20,20);
  rect(70,50,10,30);
  rect(30,70,40,10);
  rect(30,80,40,10);
  rect(0,40,10,20);
  rect(90,40,10,20);
  
  //ojos
  fill(0);
  rect(30,50,10,20);
  rect(60,50,10,20);
  //camisa
  fill(0,131,184);
  rect(20,90,60,10);
      popMatrix();
      break;
       
      case 4:   //Lagarto
      pushMatrix();
      translate(400,270);
      scale(.5);
      fill(36,159,62);
 rect(30,0,30,20);
 rect(20,10,10,50);
 rect(10,20,10,40);
 rect(60,10 ,10,50);
 rect(70,20,10,40);
 rect(80,30,10,30);
 rect(90,40,10,20);
 rect(30,50,30,10);
 rect(20,60,40,20);
 rect(60,80,40,10);
 rect(30,80,30,10); 
  
  //lengua
  fill(255,0,0);
 rect(60,60,10,10);
 rect(60,70,20,10);
  
 //ojo
  fill(255);
  rect(30,20,30,30);
  fill(0);
  rect(40,40,20,10);
      popMatrix();
      break;
                  
      case 5:   //Sheldon        
      noStroke();
      pushMatrix();
      translate(700,270);
      scale(.5);
      fill(0);
  rect(30,10,40,10);
  rect(20,20,60,10);
  rect(10,30,80,10);
  rect(10,40,10,20);
  rect(80,40,10,20);
  
  //piel
  fill(230,176,112);
  rect(20,40,60,10);
  rect(20,50,10,30);
  rect(40,50,20,20);
  rect(70,50,10,30);
  rect(30,70,40,10);
  rect(30,80,40,10);
  rect(0,40,10,20);
  rect(90,40,10,20);
  
  //ojos
  fill(0);
  rect(30,50,10,20);
  rect(60,50,10,20);
  //camisa
  fill(0,250,0);
  rect(20,90,60,10);
      popMatrix();
      break;  
  }
 }
}