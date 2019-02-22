//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  double myX;
  double myY;
  int color_;

  public Star(double myX, double myY, int color_) {
    this.myX = myX;
    this.myY = myY;
    this.color_ = color_;
  }
  void show() {
    pushMatrix();
    translate((float) myX, (float)myY);
    fill(color_);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }

}
