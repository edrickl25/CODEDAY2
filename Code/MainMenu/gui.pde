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
  if (heartRate <= 0){
    heartRate = 0;
  }
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
  if (lungHealth <= 0){
     lungHealth = 0;
   }
  if(appc.mousePressed){
lungHealth = lungHealth + floor(random(50));
      if (lungHealth <= 100 && lungHealth > 66){
        if (clickCapLungs == false){
          for (int forLooperLungs = 0; forLooperLungs < lungsHealthy.length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + lungsHealthy[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        
          for (int forLooperLungs = 0; forLooperLungs == (flippedLungsHealthy).length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + (flippedLungsHealthy)[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        }
      }
      
            if (lungHealth <= 66 && lungHealth > 33){
        if (clickCapLungs == false){
          for (int forLooperLungs = 0; forLooperLungs < lungsMed.length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + lungsMed[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        
          for (int forLooperLungs = 0; forLooperLungs == (flippedLungsMed).length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + (flippedLungsMed)[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        }
      }
      
                  if (lungHealth <= 33 && lungHealth > 0){
        if (clickCapLungs == false){
          for (int forLooperLungs = 0; forLooperLungs < lungsDanger.length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + lungsDanger[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        
          for (int forLooperLungs = 0; forLooperLungs == (flippedLungsDanger).length; forLooperLungs++){
            PImage lungsPicture = loadImage(lazy + (flippedLungsDanger)[forLooperLungs]);
            appc.image(lungsPicture,0,0);
            clickCapLungs = true;
          }
        }
      }
      
      
      
        }
      } //_CODE_:window2:758619:

public void win_draw3(GWinApplet appc, GWinData data) { //_CODE_:window3:222817:
   
 
   PImage wallPicture = loadImage("Data/Wall.png");
   if (InitializedEye == false){

   appc.image(wallPicture,0,0);
   
    PImage eyePicture = loadImage("Data/Eye_Helmet_Normal1.png");
    appc.image(eyePicture, bobbingX, bobbingY);
    InitializedEye = true;
  }
    PImage eyePicture = loadImage("Data/Eye_Helmet_Normal1.png");
    if (eyeHealth <= 100 && eyeHealth > 66){
    appc.image(wallPicture,0,0);
    eyePicture = loadImage("Data/Eye_Helmet_Normal1.png");
    appc.image(eyePicture, bobbingX, bobbingY);

    
  }
  if (eyeHealth <= 66 && eyeHealth > 33){  
    appc.image(wallPicture,0,0);
    eyePicture = loadImage("Data/Eye_Helmet_Med1.png");
    appc.image(eyePicture, bobbingX, bobbingY);
  }
  if (eyeHealth <= 33 && eyeHealth >= 0){
    appc.image(wallPicture,0,0);
    eyePicture = loadImage("Data/Eye_Helmet_Danger1.png");
    appc.image(eyePicture, bobbingX, bobbingY);
    gameHealth--;
  }
} //_CODE_:window3:222817:

synchronized public void eyeblink(GWinApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:window3:939152:
   clickCapEye = false;
   if (eyeHealth <= 0){
     eyeHealth = 0;
   }
   if(eyeHealth > 100){
     eyeHealth = 99;
   }
  if(appc.mousePressed){
    eyeHealth = eyeHealth + floor(random(50));
      if (eyeHealth <= 100 && eyeHealth > 66){
        if (clickCap == false){
          for (int forLooperEye = 0; forLooperEye < eyeHealthy.length; forLooperEye++){
            PImage eyePicture = loadImage(lazy + eyeHealthy[forLooperEye]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
        
          for (int forLooperEye = 0; forLooperEye == (flippedEyeHealthy).length; forLooperEye++){
            PImage eyePicture = loadImage(lazy + (flippedEyeHealthy)[forLooperEye]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
        }
      }
      
      
      
      if ((eyeHealth <= 66 && eyeHealth > 33)){
        if(clickCap == false){
          for (int forLooper = 0; forLooper < eyeMed.length; forLooper++){
            PImage eyePicture = loadImage(lazy + (eyeMed)[forLooper]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
          for (int forLooper = 0; forLooper == (flippedEyeMed).length; forLooper++){
            PImage eyePicture = loadImage(lazy + flippedEyeMed[forLooper]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
        }
      }
      if ((eyeHealth <= 33 && eyeHealth >= 0)){
        if(clickCap == false){
          for (int forLooper = 0; forLooper < eyeDanger.length; forLooper++){
            PImage eyePicture = loadImage(lazy + (eyeDanger)[forLooper]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
          for (int forLooper = 0; forLooper == (flippedEyeDanger).length; forLooper++){
            PImage eyePicture = loadImage(lazy + flippedEyeDanger[forLooper]);
            appc.image(eyePicture,bobbingX,bobbingY);
          }
        }
      }
    }
} //_CODE_:window3:939152:



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

public void createEyeGUI(){
    G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  window3 = new GWindow(this, "Eyes", 800, 35, 640, 400, false, JAVA2D);
  window3.addDrawHandler(this, "win_draw3");
  window3.addMouseHandler(this, "eyeblink");
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
GWindow window3;

