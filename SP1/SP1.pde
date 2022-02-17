
float ballVelocity = 3;
float ballX = 300;
float ballY = 30;
float playerX = 300;


boolean leftKey = false;
boolean rightKey = false;
boolean spaceBar = false;

boolean dead = true; //start screen

PImage img;

void setup(){
   size (700,800);
   img = loadImage("bg.jpg");
}

void draw(){
  if(dead == true){
    background(0);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("PRESS SPACE", width/2, height/2);
    if(spaceBar){
      dead = false;
    }
  }
  if(dead == false){
    background(0);
    image (img,0,0);
    noStroke(); 
    fill(255,0,255);//purple
    ellipse(ballX,ballY,50,50);
    stroke(255,255,0);
    fill(0,0,127);//black
    rect(playerX,740,50,50);
    playerMoves();
    moveObject();
    if(gameOver()){ 
      resetObject();
      dead = true;
    }
    if(objectIsTouchingPlayer()){
      resetObject();
    }
  }
}

void playerMoves(){
  if(leftKey){
    playerX -= 10; //move left
  }
  if(rightKey){
    playerX += 10; //move right
  }
}

void resetObject(){
  ballY = random(10,400);
  ballX = random(100,700);
  
}

// moving the ball
void moveObject(){
  ballY += ballVelocity;
}

boolean gameOver(){
  if(ballY >= height){
    return true;
  }
  return false;
}

boolean objectIsTouchingPlayer(){
  if(ballX >= playerX && ballX <= playerX+50 && ballY >= 740 && ballY <= 790){
    return true;
  }
  return false;
}

void keyPressed(){
  if(keyCode == LEFT){
    leftKey = true;
  }
  if(keyCode == RIGHT){
    rightKey = true;
  }
  if(key == ' '){
    spaceBar = true;
  }
}

void keyReleased(){
  if(keyCode == LEFT){
    leftKey = false;
  }
  if(keyCode == RIGHT){
    rightKey = false;
  }
  if(key == ' '){
    spaceBar = false;
  }
}
