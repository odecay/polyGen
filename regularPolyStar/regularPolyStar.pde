int points = 5;
void setup() {
  size(640,640);
  strokeWeight(1);
  frameRate(10);
  //makeRegPoly(15, 200, 7 );
}

void draw() {
  
  stroke(random(255),random(255),random(255));
  int oldPoints = points;
  
  points = int(map(mouseX, 0, 639, 5, 200));
  //if (points == oldPoints){
  background(0);
  //}
  int jumps = int(map(mouseY, 0, 639, 0, points));
  //points++;
  int randPt = int(random(points));
  makeRegPoly(points, 320, jumps);
  
}
public class Pt {
  public float x;
  public float y;
  
  public Pt(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  
}  
void makeRegPoly(int points, int radius, int step){
  float degrees = TWO_PI/(float)points;
  
  Pt[] pointList = new Pt[points];
  float offsetX = width/2;
  float offsetY = height/2;
  for(int i = 0; i<points; i ++){
    Pt ptToAdd = new Pt(radius*sin(degrees*i)+offsetX, radius*cos(degrees*i)+offsetY);
    pointList[i] = ptToAdd;  
  }
 //beginShape();
 int ptNumber = 0;
 int ptRotations = 0;
 int steps = step;
 boolean change = false;
 
/* 
 for(int i = 0; i<points; i++){
   vertex(pointList[ptNumber].x,pointList[ptNumber].y);
   ptNumber+=2;
   if(ptNumber >= points){
     ptNumber = 1;
   }
 */
   
// endShape();
 for(int i = 0; i<=points-1; i++){
   /*if (ptNumber+steps>=points){
     ptRotations++;
     ptNumber = ptRotations;
   }*/
   
   
   beginShape(LINES);
   if(change == true){
     if (ptNumber == 0){
       ptNumber = 1;
     }
   }
   print (" first" + ptNumber);
   
   vertex(pointList[ptNumber].x,pointList[ptNumber].y);
   ptNumber += steps;
   
   if(points%2 == 0){
     
     if (ptNumber>=points){
       ptNumber = ptNumber - points;
       change = true;
     }
 
   }
   else{
     if (ptNumber>=points){
       ptNumber = ptNumber - points;
     //ptRotations++;
     //ptNumber = ptRotations;
     }
   }
   print(" seccond"+ ptNumber);
   
   vertex(pointList[ptNumber].x,pointList[ptNumber].y);
   endShape();
 }

}
