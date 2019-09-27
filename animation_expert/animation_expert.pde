 PImage photo;
 
 int x = 0;
 int y = 1000;
 int size = 20;
 
 int _switch = 1;
 
 void setup(){
   size(1900, 1440);
   frameRate(60);
   imageMode(CENTER);
 }
 
 void draw(){
   clear();
   background(255);
   
   for(int i = 0; i < 30; i++){creature(i*30);}
 }
 
 
void creature(int Y){      //Y is y position of creature
  
    /*-----------switch cases-----------------------
    switch case 0 = change to left facing picture
    switch case 1 = change to right facing picture
       
    switch case 2 = changing x position to the left
    switch case 3 = changing x position to the right
    -----------------------------------------------*/
  
   if (x >= width){_switch = 1;}
   if (x < 0){_switch = 0;}

   if (_switch == 1){photo = loadImage("dickbuttt.jpg");_switch = 2;}
   if (_switch == 0){photo = loadImage("dickbutt.jpg");_switch = 3;}
   
   image(photo, 
   x, 
   sin(y/2) * 50 + Y,
   size / 10,
   size / 10);
   
   if (_switch == 2){x = x - 5;}
   if (_switch == 3){x = x + 5;}
   
   y += 1;
   size += 6;
}
