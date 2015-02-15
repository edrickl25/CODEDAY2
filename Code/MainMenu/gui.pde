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

synchronized public void win_draw1(GWinApplet appc, GWinData data) { //_CODE_:window1:923271:
  if (heartRate <= 0){
    heartRate = 0;
  }
  if (isInitialized == false){
    PImage heartPicture = loadImage("Data/Heart1_Normal.png");
    appc.image(heartPicture, 0, 0);
    isInitialized = true;
  }
    PImage heartPicture = loadImage("Data/Heart1_Normal.png");
    if (heartRate >= 127 && heartRate <= 147){
    heartPicture = loadImage("Data/Heart1_Normal.png");
    appc.image(heartPicture, 0, 0);
  }
  if ((heartRate >= 100 && heartRate <= 126) || (heartRate >= 147 && heartRate <= 170)){  
    heartPicture = loadImage("Data/Heart1_Med.png");
    appc.image(heartPicture, 0, 0);
  }
  if ((heartRate < 100 || heartRate >= 170)){
    heartPicture = loadImage("Data/Heart1_Danger.png");
    appc.image(heartPicture, 0, 0);
  }
} //_CODE_:window1:923271:

synchronized public void heartBeat(GWinApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:window1:627846:
  clickCap = false;
  if(appc.mousePressed){
    
    if (lungHealth <= 100 && lungHealth > 66){      
      int heartHealthyNumber = floor(170 - heartRate);
      int randomHRIncreaseVariation = floor(random(10));
      if (heartHealthyNumber > 0){
     heartRate = heartRate + floor(random(heartHealthyNumber - randomHRIncreaseVariation, heartHealthyNumber));
    }
    }
        
    if (lungHealth <= 66 && lungHealth > 33){      
      int heartHealthyNumber = floor(130 - heartRate);
      int randomHRIncreaseVariation = floor(random(10));
      if (heartHealthyNumber > 0){
     heartRate = heartRate + floor(random(heartHealthyNumber - randomHRIncreaseVariation, heartHealthyNumber));
    }
    }  
        
    if (lungHealth <= 33 && lungHealth > 0){      
      int heartHealthyNumber = floor(115 - heartRate);
      int randomHRIncreaseVariation = floor(random(10));
      if (heartHealthyNumber > 0){
     heartRate = heartRate + floor(random(heartHealthyNumber - randomHRIncreaseVariation, heartHealthyNumber));
    }

      if (heartRate >= 127 && heartRate <= 147){
        if (clickCap == false){
          for (int forLooper = 0; forLooper < heartHealthy.length; forLooper++){
            PImage heartPicture = loadImage(lazy + heartHealthy[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        
          for (int forLooper = 0; forLooper == (flippedHeartHealthy).length; forLooper++){
            PImage heartPicture = loadImage(lazy + (flippedHeartHealthy)[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        }
      }
      
      
      if ((heartRate >= 100 && heartRate <= 126) || (heartRate >= 147 && heartRate <= 170)){
        if(clickCap == false){
          for (int forLooper = 0; forLooper < heartMed.length; forLooper++){
            PImage heartPicture = loadImage(lazy + heartMed[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
          
          for (int forLooper = 0; forLooper == (flippedHeartMed).length; forLooper++){
            PImage heartPicture = loadImage(lazy + (flippedHeartMed)[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        }
      }
      
      if ((heartRate < 100 || heartRate >= 170)){
        print("Poeqn");
        if(clickCap == false){
          for (int forLooper = 0; forLooper < heartDanger.length; forLooper++){
            PImage heartPicture = loadImage(lazy + heartDanger[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
          for (int forLooper = 0; forLooper == (flippedHeartDanger).length; forLooper++){
            PImage heartPicture = loadImage(lazy + flippedHeartDanger[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        }
      }
    }
  }
} //_CODE_:window1:627846:

synchronized public void win_draw2(GWinApplet appc, GWinData data) { //_CODE_:window2:498721:
   if (lungHealth <= 0){
     lungHealth = 0;
   }
   
   if (Initializedlungs == false){
    PImage lungsPicture = loadImage("Data/Lungs1_Normal.png");
    appc.image(lungsPicture, 0, 0);
    Initializedlungs = true;
  }
    PImage lungsPicture = loadImage("Data/Lungs1_Normal.png");
    if (lungHealth <= 100 && lungHealth > 66){
    lungsPicture = loadImage("Data/Lungs1_Normal.png");
    appc.image(lungsPicture, 0, 0);

    
  }
  if (lungHealth <= 66 && lungHealth > 33){  
    lungsPicture = loadImage("Data/Lungs1_Med.png");
    appc.image(lungsPicture, 0, 0);
  }
  if (lungHealth <= 33 && lungHealth >= 0){
    lungsPicture = loadImage("Data/Lungs1_Danger.png");
    appc.image(lungsPicture, 0, 0);
  }
} //_CODE_:window2:498721:

synchronized public void lungBreathe(GWinApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:window2:758619:
  clickCapLungs = false;
  if(appc.mousePressed){

      if (lungHeath <= 100 && lungHealth > 66){
        if (clickCap == false){
          for (int forLooperLungs = 0; forLooperLungs < lungsHealthy.length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + lungsHealthy[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        
          for (int forLooperLungs = 0; forLooperLungs == (flippedLungsHealthy).length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + (flippedLungsHealthy)[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCap = true;
          }
        }
      }
      
      
      if ((heartRate >= 100 && heartRate <= 126) || (heartRate >= 147 && heartRate <= 170)){
        if(clickCap == false){
          for (int forLooper = 0; forLooper < heartMed.length; forLooper++){
            PImage heartPicture = loadImage(lazy + heartMed[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
          
          for (int forLooper = 0; forLooper == (flippedHeartMed).length; forLooper++){
            PImage heartPicture = loadImage(lazy + (flippedHeartMed)[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        }
      }
      
      if ((heartRate < 100 || heartRate >= 170)){
        print("Poeqn");
        if(clickCap == false){
          for (int forLooper = 0; forLooper < heartDanger.length; forLooper++){
            PImage heartPicture = loadImage(lazy + heartDanger[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
          for (int forLooper = 0; forLooper == (flippedHeartDanger).length; forLooper++){
            PImage heartPicture = loadImage(lazy + flippedHeartDanger[forLooper]);
            appc.image(heartPicture,0,0);
            clickCap = true;
          }
        }
      }
    }
  }
} //_CODE_:window2:758619:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  window1 = new GWindow(this, "Heart", 0, 0, 640, 400, false, JAVA2D);
  window1.addDrawHandler(this, "win_draw1");
  window1.addMouseHandler(this, "heartBeat");
}

public void createLungsGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  window2 = new GWindow(this, "Lungs", 420, 630, 640, 400, false, JAVA2D);
  window2.addDrawHandler(this, "win_draw2");
  window2.addMouseHandler(this, "lungBreathe");
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GWindow window2;

