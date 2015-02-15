// Need G4P library
import g4p_controls.*;


public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  PImage img; 
img = loadImage("poopitre.png");
image(img, 0,0);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
