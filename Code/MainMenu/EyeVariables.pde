boolean InitializedEye = false;
boolean eyeHealthLoop = false;

  String[] eyeHealthy = {"Eye_Helmet_Normal1.png","Eye_Helmet_Normal2.png","Eye_Helmet_Normal3.png","Eye_Helmet_Normal4.png"};
  String[] eyeMed = {"Eye_Helmet_Med1.png","Eye_Helmet_Med2.png","Eye_Helmet_Med3.png","Eye_Helmet_Med4.png"};
  String[] eyeDanger = {"Eye_Helmet_Danger1.png","Eye_Helmet_Danger2.png","Eye_Helmet_Danger3.png","Eye_Helmet_Danger4.png"};
  String[] flippedEyeHealthy = {"Eye_Helmet_Normal4.png","Eye_Helmet_Normal3.png","Eye_Helmet_Normal2","Eye_Helmet_Normal1"};
  String[] flippedEyeMed = {"Eye_Helmet_Med4.png","Eye_Helmet_Med3.png","Eye_Helmet_Med2.png","Eye_Helmet_Med1.png"};
  String[] flippedEyeDanger = {"Eye_Helmet_Danger4.png","Eye_Helmet_Danger3.png","Eye_Helmet_Danger2.png","Eye_Helmet_Danger1.png"};
  
  
  String lazyeye = "Data/";
  
  boolean clickCapEye = false; //say this 5 times fast
  
  float eyeHealth = 100;
  int eyeTimer = 0;
  int eyeTimerCap = 1000;
  
  int bobbingX = 1;
  int bobbingY = 1;
  int bobbingV = 2;
