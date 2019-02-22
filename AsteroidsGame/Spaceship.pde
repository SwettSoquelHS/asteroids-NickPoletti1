/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
class Spaceship extends Mover {

  Spaceship(float x, float y) {
    super(x, y);
  }

  public Spaceship(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
  }
  
  public void Hyperspace(Spaceship character){
    character.x = (float) Math.random()*640;
    character.y = (float) Math.random()*400;
    character.direction = (float) Math.random()*360;
  }

  void show() {
    pushMatrix();
    translate(x, y);
    rotate(radians(direction));
    beginShape(); // Right side
    vertex(0, 0);
    vertex(0, 2);
    bezierVertex(-4, 6, 12, 20, 20, 22);
    vertex(16, 18);
    vertex(12, 10);
    vertex(16, 6);
    vertex(20, 4);
    vertex(24, 2);
    vertex(24, -1);
    fill(255);
    scale(1.5);
    endShape();
    beginShape(); // Left side
    vertex(0, 0);
    vertex(0, -2);
    bezierVertex(-4, -6, 12, -20, 20, -22);
    vertex(16, -18);
    vertex(12, -10);
    vertex(16, -6);
    vertex(20, -4);
    vertex(24, -2);
    vertex(24, 1);
    fill(255);
    endShape();
    popMatrix();
  }
}
