
 Bacteria [] colony;
 void setup()   
 {
  noStroke();
  frameRate(200);
 	size(600,600); 
  colony = new Bacteria[1000];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
 }   
 void draw()   
 {  
  background(0); 
  chicken();
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
 }
 void mousePressed(){
   redraw();
 }
 class Bacteria    
 {     
 	int myX, myY;
  Bacteria(){
    myX = 300;
    myY = 100;
  }
  void walk(){
    myX = myX + (int)(Math.random()*6)-3;
    myY = myY + (int)(Math.random()*7)-2;
    if(myX == 0){
      myX = 300;
      myY = 100;
    }
    
  }
  void show(){
    
    fill(0,0,0);
    ellipse(myX,myY,30,30);
    fill(142,16,16);
    ellipse(myX-10,myY,10,10);
    ellipse(myX+10, myY, 10, 10);
    rect(myX-5,myY-15,10,10);
    rect(myX-5,myY+5,10,10);
    fill(73,76,167);
    ellipse(myX,myY,10,10);
  }
 }
void chicken(){
  fill(255);
  rect(89,520,22,40);
  ellipse(95,560,20,20);
  ellipse(105,560,20,20);
  fill(90,35,14);
  ellipse(100,475,60,80);
  rect(89,500,22,40);
  
  
  
  
}
