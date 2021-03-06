// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2011
// Box2DProcessing example

// Basic example of falling rectangles

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;

// A list we'll use to track fixed objects
ArrayList<Boundary> boundaries;
// A list for all of our rectangles
ArrayList<Box> boxes;
int movimientoLimite = 0;

void setup() {
  size(640,360);
  smooth();

  // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // We are setting a custom gravity
  box2d.setGravity(0, -100);

  // Create ArrayLists	
  boxes = new ArrayList<Box>();
  boundaries = new ArrayList<Boundary>();

  // Add a bunch of fixed boundaries

  
}

void draw() {
  background(209,79,89);

  // We must always step through time!
  box2d.step();
movimientoLimite += 1;
background(200);
boundaries.add(new Boundary(movimientoLimite,height-80,50,10));
  boundaries.add(new Boundary(movimientoLimite,height-5,width/2-50,10));
  boundaries.add(new Boundary(movimientoLimite,height-50,width/2-50,10));
background(200);
  // Boxes fall from the top every so often
 

  // Display all the boundaries
  for (Boundary wall: boundaries) {
    wall.display();
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }

  // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }
}

void mouseReleased(){
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
  
}