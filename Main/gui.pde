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

synchronized public void win_draw2(GWinApplet appc, GWinData data) { //_CODE_:heart:326237:
  appc.background(230);
  
} //_CODE_:heart:326237:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:351264:
  heartRate += 15;
   if (heartRate >= 127 && heartRate <= 147){
       imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart1.png" } );
  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart2.png" } );
    imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart3.png" } );
  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart2.png" } );
  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart1.png" } );

   }  
  if ((heartRate >= 100 && heartRate <= 126) || (heartRate >= 127 && heartRate <= 170)){
      imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail4.png"} );
      imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail5.png"} );
      imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail6.png"} );
            imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail5.png"} );
                  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail4.png"} );
}

if ((heartRate < 100 || heartRate >= 170)){
     imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay7.png" } );
          imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay2.png" } );
               imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay3.png" } );
                    imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay2.png" } );
                         imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay7.png" } );
}
}

 //_CODE_:imgButton1:351264:

void heartTick(){
 if (heartRate >= 127 && heartRate <= 147){
        heartRate -= 1;
     imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart1.png", "Heart2.png", "Heart3.png" } );
     
  print(heartRate + " ");
}
if ((heartRate >= 100 && heartRate <= 126) || (heartRate >= 127 && heartRate <= 170)){
     heartRate -= 1;
   imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartFail4.png", "HeartFail5.png", "HeartFail6.png" } );
  print(heartRate + " ");
}
if ((heartRate < 100 || heartRate >= 170)){
    heartRate -= 1;
     imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "HeartDecay7.png", "HeartDecayBeat2.png", "HeartDecayBeat3.png" } );
  gameHealth -= 1;
  print(heartRate + " ");
}
}

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  heart = new GWindow(this, "Heart", 0, 0, 500, 500, false, JAVA2D);
  heart.addDrawHandler(this, "win_draw2");
  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] { "Heart1.png", "Heart1.png", "Heart1.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
}

// Variable declarations 
// autogenerated do not edit
GWindow heart;
GImageButton imgButton1; 

