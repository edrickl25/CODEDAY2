/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

int x = 250;
int y = 250;
int xv = 5;

synchronized public void win_draw1(GWinApplet appc, GWinData data) { //_CODE_:Foo:981153:
  appc.background(230);
  appc.background(20,20,20);
  appc.rect(x,y,80,80);
  x += xv;
  if(x>360){
    xv *= -1;
  }
  if(x<0){
    xv *= -1;
  }
} //_CODE_:Foo:981153:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  Foo = new GWindow(this, "Bar", 0, 0, 400, 640, false, JAVA2D);
  Foo.setActionOnClose(G4P.EXIT_APP);
  Foo.addDrawHandler(this, "win_draw1");
}

// Variable declarations 
// autogenerated do not edit
GWindow Foo;

