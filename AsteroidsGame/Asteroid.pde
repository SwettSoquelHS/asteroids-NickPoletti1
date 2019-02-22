/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   

  Asteroid(float x, float y) {
    super(x, y);
  }

  public Asteroid(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
  }

  private float spin = 0;


  void show() {
    spin += 1;
    pushMatrix();
    translate(x, y);
    rotate(radians(spin));
    beginShape();
    vertex(0, 0);
    vertex(2, 2);
    vertex(0, 4);
    vertex(3, 5);
    vertex(5, 7);
    vertex(10, 7);
    vertex(12, 5);
    vertex(11, 0);
    vertex(10, -3);
    vertex(5, -4);
    vertex(2, -5);
    vertex(1, -2);
    fill(100);
    scale(2);
    endShape();
    popMatrix();
  }
}
