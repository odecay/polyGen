void setup() {
  

  size(1024,768);
  
}

void draw() {
  
  if (mouseButton == LEFT){
    int vertices = (int)(Math.random()*18);
    //int vertices = random(18);
    //int[] vertList = new int[vertices]
    fill(random(255),random(255),random(255));
    beginShape();
    for (int i = 0; i <= vertices; i++){
     vertex((random(-300,300)+mouseX),(random(-300,300)+mouseY));
    }
    endShape();
  }
  /*else {
    int vertices = (int)(Math.random()*18);
    fill(0,0,0);
    beginShape();
    for (int i = 0; i <= vertices; i++){
      vertex((random(600)/(2*mouseX)),(random(600)/(2*mouseY)));
    }
    endShape();
  
  
  
  }
  */
}

void mousePressed() {
 
  //ellipse(mouseX,mouseY,20,20);
}
