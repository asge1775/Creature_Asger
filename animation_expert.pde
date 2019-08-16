 PImage photo;
 
 int x = 0;
 int y = 1000;
 int size = 20;
 
int _switch = 1;
 
int screenx = 1900;
int screeny = 1440;
 
 void setup(){
   size(1900, 1440);
   frameRate(60);
   imageMode(CENTER);
 }
 
 void draw(){
   clear();
   background(255);
   
   if (x >= screenx){_switch = 1;}
   if (x < 0){_switch = 0;}

   if (_switch == 1){photo = loadImage("dickbuttt.png");_switch = 2;}
   if (_switch == 0){photo = loadImage("dickbutt.png");_switch = 3;}
   
   image(photo, 
   (0) + x, 
   (screeny/2) + sin(y/2) * 50 ,
   size / 10,
   size / 10);
   
   if (_switch == 2){x = x - 5;}
   if (_switch == 3){x = x + 5;}
   y ++;
   size = size + 6;
 }
