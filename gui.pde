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

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:582300:
  appc.background(230);
} //_CODE_:window1:582300:

public void resetButtonClicked(GButton source, GEvent event) { //_CODE_:resetButton:811346:
  reset();
} //_CODE_:resetButton:811346:

// Pause button 
public void pauseButtonClicked(GButton source, GEvent event) { //_CODE_:pauseButton:875606:
  // If the program is running, stop 
  if(running) {
    running = !running;
    noLoop();
    pauseButton.setText("Resume");
  }
  
  // If the program is paused, run
  else {
    running = !running;
    loop();
    pauseButton.setText("Pause");
  }
} //_CODE_:pauseButton:875606:

public void massSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:massSlider:958855:
  //println("massSlider - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:massSlider:958855:

public void focalDistanceSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:focalDistanceSlider:299666:
  
} //_CODE_:focalDistanceSlider:299666:

public void xPositionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:xPositionSlider:537864:
  //println("xPositionSlider - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:xPositionSlider:537864:

public void yPositionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:yPositionSlider:494398:
  //println("yPositionSlider - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:yPositionSlider:494398:

// Changes the beamIntensity field in the Material class
public void beamIntensitySliderChanged(GCustomSlider source, GEvent event) { //_CODE_:beamIntensitySlider:967979:
  float num = 1;
  try {
    num = beamIntensitySlider.getValueF();
  } catch (Exception e) {
    println(e);
  }
  
  
  if(num > 0.1 && num < 2 ) {
    material.beamIntensity = num;
  }
} //_CODE_:beamIntensitySlider:967979:

// Changes the material field in the Material class
public void materialChoiceClicked(GDropList source, GEvent event) { //_CODE_:materialChoice:221684:
  if (materialChoice.getSelectedText().equals("Ant")) {
    currentMaterial = "ant";
  }
  
  else if (materialChoice.getSelectedText().equals("Paper")) {
    currentMaterial = "paper";
  }
  
  else if (materialChoice.getSelectedText().equals("Grass")) {
    currentMaterial = "grass";
  }
  
  else {
    currentMaterial = "wood";
  }
  
  reset();
} //_CODE_:materialChoice:221684:

// Changes the magnifying glass quality
public void glassQualityChanged(GDropList source, GEvent event) { //_CODE_:glassQuality:419836:
  if (glassQuality.getSelectedText().equals("Clear")) {
    magnifyingGlass.lensQuality = "Clear";
    magnifyingGlass.transparency = 1;
  }
  
  else if (glassQuality.getSelectedText().equals("Impurities")) {
    magnifyingGlass.lensQuality = "Impurities";
    magnifyingGlass.transparency = 0.75;
  }
  
  else if (glassQuality.getSelectedText().equals("Dirty")) {
    magnifyingGlass.lensQuality = "Dirty";
    magnifyingGlass.transparency = 0.5;
  }
} //_CODE_:glassQuality:419836:

// Changes the surrounding temperature and resets the simulation
public void surroundingTempChanged(GTextArea source, GEvent event) { //_CODE_:surroundingTemp:986421:
  try {
    surroundingTemperature = float(surroundingTemp.getText());
  
    if (surroundingTemperature > 60){
      surroundingTemperature = 60;
    }
    
    else if(surroundingTemperature < -20){
      surroundingTemperature = -20;
    }
    
    //currentTemperature.setText(str(surroundingTemperature));
    reset();
  } catch (Exception e) {
  
  }
  
} //_CODE_:surroundingTemp:986421:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 350, 400, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  resetButton = new GButton(window1, 10, 10, 80, 30);
  resetButton.setText("Reset");
  resetButton.addEventHandler(this, "resetButtonClicked");
  pauseButton = new GButton(window1, 100, 10, 80, 30);
  pauseButton.setText("Pause");
  pauseButton.addEventHandler(this, "pauseButtonClicked");
  temperatureLabel = new GLabel(window1, 200, 10, 140, 20);
  temperatureLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  temperatureLabel.setText("Current Temperature");
  temperatureLabel.setOpaque(false);
  currentTemperature = new GLabel(window1, 230, 30, 80, 20);
  currentTemperature.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  currentTemperature.setText("25 C");
  currentTemperature.setOpaque(false);
  massSlider = new GCustomSlider(window1, 10, 70, 160, 50, "grey_blue");
  massSlider.setShowValue(true);
  massSlider.setLimits(2.0, 2.0, 100.0);
  massSlider.setShowTicks(true);
  massSlider.setNumberFormat(G4P.DECIMAL, 2);
  massSlider.setOpaque(false);
  massSlider.addEventHandler(this, "massSliderChanged");
  label1 = new GLabel(window1, 50, 50, 80, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Mass (g)");
  label1.setOpaque(false);
  focalDistanceSlider = new GCustomSlider(window1, 10, 140, 160, 50, "grey_blue");
  focalDistanceSlider.setShowValue(true);
  focalDistanceSlider.setLimits(20.0, 20.0, 50.0);
  focalDistanceSlider.setShowTicks(true);
  focalDistanceSlider.setNumberFormat(G4P.DECIMAL, 2);
  focalDistanceSlider.setOpaque(false);
  focalDistanceSlider.addEventHandler(this, "focalDistanceSliderChanged");
  focalDistanceLabel = new GLabel(window1, 30, 120, 120, 20);
  focalDistanceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  focalDistanceLabel.setText("Focal Distance");
  focalDistanceLabel.setOpaque(false);
  xPositionSlider = new GCustomSlider(window1, 10, 210, 160, 50, "grey_blue");
  xPositionSlider.setLimits(300.0, 200.0, 600.0);
  xPositionSlider.setNumberFormat(G4P.DECIMAL, 2);
  xPositionSlider.setOpaque(false);
  xPositionSlider.addEventHandler(this, "xPositionSliderChanged");
  xPositionLabel = new GLabel(window1, 50, 190, 80, 20);
  xPositionLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  xPositionLabel.setText("x-position");
  xPositionLabel.setOpaque(false);
  yPositionSlider = new GCustomSlider(window1, 10, 280, 160, 50, "grey_blue");
  yPositionSlider.setLimits(200.0, 150.0, 350.0);
  yPositionSlider.setNumberFormat(G4P.DECIMAL, 2);
  yPositionSlider.setOpaque(false);
  yPositionSlider.addEventHandler(this, "yPositionSliderChanged");
  yPositionLabel = new GLabel(window1, 50, 260, 80, 20);
  yPositionLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  yPositionLabel.setText("y-position");
  yPositionLabel.setOpaque(false);
  beamIntensitySlider = new GCustomSlider(window1, 10, 350, 160, 50, "grey_blue");
  beamIntensitySlider.setShowValue(true);
  beamIntensitySlider.setLimits(1.0, 0.1, 2.0);
  beamIntensitySlider.setNumberFormat(G4P.DECIMAL, 2);
  beamIntensitySlider.setOpaque(false);
  beamIntensitySlider.addEventHandler(this, "beamIntensitySliderChanged");
  beamIntensityLabel = new GLabel(window1, 10, 330, 160, 20);
  beamIntensityLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  beamIntensityLabel.setText("Light Beam Intensity");
  beamIntensityLabel.setOpaque(false);
  materialChoice = new GDropList(window1, 200, 100, 130, 100, 4, 10);
  materialChoice.setItems(loadStrings("list_221684"), 0);
  materialChoice.addEventHandler(this, "materialChoiceClicked");
  materialChoiceLabel = new GLabel(window1, 210, 80, 110, 20);
  materialChoiceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  materialChoiceLabel.setText("Material Choice");
  materialChoiceLabel.setOpaque(false);
  glassQuality = new GDropList(window1, 200, 300, 130, 80, 3, 10);
  glassQuality.setItems(loadStrings("list_419836"), 0);
  glassQuality.addEventHandler(this, "glassQualityChanged");
  glassQualityLabel = new GLabel(window1, 210, 280, 110, 20);
  glassQualityLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  glassQualityLabel.setText("Glass Quality");
  glassQualityLabel.setOpaque(false);
  surroundingTempLabel = new GLabel(window1, 180, 210, 160, 20);
  surroundingTempLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  surroundingTempLabel.setText("Surrounding Temperature");
  surroundingTempLabel.setOpaque(false);
  surroundingTemp = new GTextArea(window1, 220, 230, 80, 40, G4P.SCROLLBARS_NONE);
  surroundingTemp.setText("25");
  surroundingTemp.setPromptText("Surrounding Temperature ");
  surroundingTemp.setOpaque(true);
  surroundingTemp.addEventHandler(this, "surroundingTempChanged");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton resetButton; 
GButton pauseButton; 
GLabel temperatureLabel; 
GLabel currentTemperature; 
GCustomSlider massSlider; 
GLabel label1; 
GCustomSlider focalDistanceSlider; 
GLabel focalDistanceLabel; 
GCustomSlider xPositionSlider; 
GLabel xPositionLabel; 
GCustomSlider yPositionSlider; 
GLabel yPositionLabel; 
GCustomSlider beamIntensitySlider; 
GLabel beamIntensityLabel; 
GDropList materialChoice; 
GLabel materialChoiceLabel; 
GDropList glassQuality; 
GLabel glassQualityLabel; 
GLabel surroundingTempLabel; 
GTextArea surroundingTemp; 
