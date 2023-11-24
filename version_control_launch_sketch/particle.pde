class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  color _Color;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    _Color=color(random(0,255),random(0,255),random(0,255));
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(_Color);
    ellipse(position.x, position.y, 10, 10);
  }
}
