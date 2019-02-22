/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
Asteroid[] asteroids;
Star[] starField;


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar
boolean HYPERSPACE;   //User is pressing shift key

/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(640, 400);

  player1 = new Spaceship(height/2, width/2, 1, 270);
  asteroids = new Asteroid[10];
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid((float)(Math.random()*640), (float)(Math.random()*400), (float)(Math.random()*2), (float)(Math.random()*360));
  }
  starField = new Star[400];
  for (int i = 0; i < starField.length; i++) {
    starField[i] = new Star((Math.random()*640), (Math.random()*400), 255);
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
void draw() {
  background(0);

  //Draw Starfield first 
  for (int i = 0; i < starField.length; i++) {
    starField[i].show();
  }
  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i].show();
    asteroids[i].update();
  }

  //Update spaceship
  player1.update();

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  player1.show();
  if (ROTATE_LEFT)
    player1.setDirection(player1.getDirection()-3.0);
  if (ROTATE_RIGHT)
    player1.setDirection(player1.getDirection()+3.0);

  if (MOVE_FORWARD == true) {
    if (player1.speed < 3) {
      player1.setSpeed(player1.getSpeed()+.3);
    }
  } else {
    if (player1.speed > 0) {
      player1.setSpeed(player1.getSpeed()-.5);
    }
    if (player1.speed < 0)
      player1.setSpeed(0);
  }

  if (HYPERSPACE == true) {
    player1.setSpeed(0);
    player1.Hyperspace(player1);
  }
  

  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    } else if (keyCode == SHIFT ) {
      HYPERSPACE = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  } else if (keyCode == SHIFT) {
    HYPERSPACE = false;
  }
}
//void checkOnAsteroids() {
//  for (int i = 0; i < asteroids.length; i++) {
//    Asteroid a1 = asteroids[i];
//    for ( int j = 0; j < asteroids.length; j++) {
//      Asteroid a2= asteroids[j];
//      if (a1 != a2 && a1.collidingWith(a2)) {

//      }
//    }
//  }
//}
