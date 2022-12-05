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

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:415860:
  appc.background(230);
} //_CODE_:window1:415860:

public void resetButtonClicked(GButton source, GEvent event) { //_CODE_:resetButton:557633:
  println("resetButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:resetButton:557633:

public void pauseButtonClicked(GButton source, GEvent event) { //_CODE_:pauseButton:691105:
  println("pauseButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:pauseButton:691105:

public void lensThicknessSliderChanged(GSlider source, GEvent event) { //_CODE_:lensThicknessSlider:348237:
  println("lensThicknessSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:lensThicknessSlider:348237:

public void focalDistanceSliderChanged(GSlider source, GEvent event) { //_CODE_:focalDistanceSlider:402570:
  println("focalDistanceSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:focalDistanceSlider:402570:

public void xPosSliderChanged(GSlider source, GEvent event) { //_CODE_:xPosSlider:614282:
  println("xPosSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:xPosSlider:614282:

public void yPosSliderChanged(GSlider source, GEvent event) { //_CODE_:yPosSlider:334502:
  println("yPosSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:yPosSlider:334502:

public void lightBeamSliderChanged(GSlider source, GEvent event) { //_CODE_:lightBeamSlider:413593:
  println("lightBeamSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:lightBeamSlider:413593:

public void materialListChanged(GDropList source, GEvent event) { //_CODE_:materialList:648516:
  println("materialList - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:materialList:648516:

public void startingTemperatureTextChanged(GTextArea source, GEvent event) { //_CODE_:startingTemeperatureText:610077:
  println("startingTemeperatureText - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:startingTemeperatureText:610077:

public void glassQualityListChanged(GDropList source, GEvent event) { //_CODE_:glassQualityList:938200:
  println("glassQualityList - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:glassQualityList:938200:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  resetButton = new GButton(window1, 15, 15, 65, 30);
  resetButton.setText("Reset");
  resetButton.addEventHandler(this, "resetButtonClicked");
  pauseButton = new GButton(window1, 90, 15, 65, 30);
  pauseButton.setText("Pause");
  pauseButton.addEventHandler(this, "pauseButtonClicked");
  currentTemperatureLabel = new GLabel(window1, 150, 15, 150, 20);
  currentTemperatureLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  currentTemperatureLabel.setText("Current Temperature");
  currentTemperatureLabel.setOpaque(false);
  currentTemperature = new GLabel(window1, 185, 38, 80, 20);
  currentTemperature.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  currentTemperature.setText("0 C");
  currentTemperature.setOpaque(false);
  lensThicknessSlider = new GSlider(window1, 15, 80, 150, 40, 10.0);
  lensThicknessSlider.setShowValue(true);
  lensThicknessSlider.setLimits(1.0, 1.0, 5.0);
  lensThicknessSlider.setShowTicks(true);
  lensThicknessSlider.setNumberFormat(G4P.DECIMAL, 2);
  lensThicknessSlider.setOpaque(false);
  lensThicknessSlider.addEventHandler(this, "lensThicknessSliderChanged");
  lensThicknessLabel = new GLabel(window1, 15, 65, 150, 10);
  lensThicknessLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lensThicknessLabel.setText("Lens Thickness");
  lensThicknessLabel.setOpaque(false);
  focalDistanceSlider = new GSlider(window1, 15, 150, 150, 40, 10.0);
  focalDistanceSlider.setShowValue(true);
  focalDistanceSlider.setLimits(100.0, 100.0, 200.0);
  focalDistanceSlider.setStickToTicks(true);
  focalDistanceSlider.setShowTicks(true);
  focalDistanceSlider.setNumberFormat(G4P.DECIMAL, 2);
  focalDistanceSlider.setOpaque(false);
  focalDistanceSlider.addEventHandler(this, "focalDistanceSliderChanged");
  focalDistanceLabel = new GLabel(window1, 15, 135, 150, 10);
  focalDistanceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  focalDistanceLabel.setText("Focal Distance ");
  focalDistanceLabel.setOpaque(false);
  xPosSlider = new GSlider(window1, 15, 220, 150, 40, 10.0);
  xPosSlider.setShowValue(true);
  xPosSlider.setLimits(100.0, 50.0, 500.0);
  xPosSlider.setShowTicks(true);
  xPosSlider.setNumberFormat(G4P.DECIMAL, 2);
  xPosSlider.setOpaque(false);
  xPosSlider.addEventHandler(this, "xPosSliderChanged");
  xPosLabel = new GLabel(window1, 15, 205, 150, 10);
  xPosLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  xPosLabel.setText("x-position");
  xPosLabel.setOpaque(false);
  yPosSlider = new GSlider(window1, 15, 290, 150, 40, 10.0);
  yPosSlider.setLimits(100.0, 100.0, 500.0);
  yPosSlider.setNumberFormat(G4P.DECIMAL, 2);
  yPosSlider.setOpaque(false);
  yPosSlider.addEventHandler(this, "yPosSliderChanged");
  yPosLabel = new GLabel(window1, 15, 275, 150, 10);
  yPosLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  yPosLabel.setText("y-position");
  yPosLabel.setOpaque(false);
  lightBeamSlider = new GSlider(window1, 15, 360, 150, 40, 10.0);
  lightBeamSlider.setLimits(0.5, 0.0, 1.0);
  lightBeamSlider.setNumberFormat(G4P.DECIMAL, 2);
  lightBeamSlider.setOpaque(false);
  lightBeamSlider.addEventHandler(this, "lightBeamSliderChanged");
  lightBeamLabel = new GLabel(window1, 15, 345, 150, 10);
  lightBeamLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lightBeamLabel.setText("Light Beam Intensity");
  lightBeamLabel.setOpaque(false);
  materialList = new GDropList(window1, 190, 101, 90, 80, 3, 10);
  materialList.setItems(loadStrings("list_648516"), 0);
  materialList.addEventHandler(this, "materialListChanged");
  materialChoiceLabel = new GLabel(window1, 185, 75, 100, 20);
  materialChoiceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  materialChoiceLabel.setText("Material Choice");
  materialChoiceLabel.setOpaque(false);
  startingTemperatureLabel = new GLabel(window1, 185, 200, 100, 20);
  startingTemperatureLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  startingTemperatureLabel.setText("Starting Temperature");
  startingTemperatureLabel.setOpaque(false);
  startingTemeperatureText = new GTextArea(window1, 185, 220, 100, 30, G4P.SCROLLBARS_NONE);
  startingTemeperatureText.setText("25 C");
  startingTemeperatureText.setOpaque(true);
  startingTemeperatureText.addEventHandler(this, "startingTemperatureTextChanged");
  qualityLabel = new GLabel(window1, 185, 270, 100, 20);
  qualityLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  qualityLabel.setText("Glass Quality");
  qualityLabel.setOpaque(false);
  glassQualityList = new GDropList(window1, 185, 295, 100, 80, 3, 10);
  glassQualityList.setItems(loadStrings("list_938200"), 0);
  glassQualityList.addEventHandler(this, "glassQualityListChanged");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton resetButton; 
GButton pauseButton; 
GLabel currentTemperatureLabel; 
GLabel currentTemperature; 
GSlider lensThicknessSlider; 
GLabel lensThicknessLabel; 
GSlider focalDistanceSlider; 
GLabel focalDistanceLabel; 
GSlider xPosSlider; 
GLabel xPosLabel; 
GSlider yPosSlider; 
GLabel yPosLabel; 
GSlider lightBeamSlider; 
GLabel lightBeamLabel; 
GDropList materialList; 
GLabel materialChoiceLabel; 
GLabel startingTemperatureLabel; 
GTextArea startingTemeperatureText; 
GLabel qualityLabel; 
GDropList glassQualityList;
