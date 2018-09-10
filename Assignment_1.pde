boolean brush = false;

void setup() {
  size(1500, 1500);
  background(random(255), 226, 221);
  rectMode(CENTER);
  stroke(255);
  //grid pattern
  strokeWeight(15);
  for (int i = 0; i < height; i = i+250) {
    line(0, i, width, i);
  }
  for (int i = 0; i < width; i = i+250) {
    line(i, 0, i, height);
  }
}

void draw() {
  fill(0);
  textSize(50);
  text("Make a checkerboard pattern by coloring the squares", 100, 40);
  text(":Press mouse button to start coloring,release to stop", 100, 100);
  textSize(40);
  text("(Press E to clear the board)", 500, 150);
  fill(255);
  if(brush == true){
   colorbrush(); 
  }
}

void keyPressed() {
  if(key == 'e' || key == 'E'){
    background(random(255), 226, 221);    
    stroke(255);
    //grid pattern
    strokeWeight(10);
    for (int i = 0; i < height; i = i+250) {
    line(0, i, width, i);
    }
    for (int i = 0; i < width; i = i+250) {
    line(i, 0, i, height);
    brush = false;
    }
  }
  if (key == 's' || key == 'S') {
    saveFrame("drawing_####.png");
  }
}

void mousePressed() {
  if(mousePressed){
    brush = true;
  }
}

void mouseReleased(){
  brush = false; 
}
void colorbrush() {
  //want to get this to follow mouse even when not clicked but idk
  rect(mouseX, mouseY, 80, 80);
}
