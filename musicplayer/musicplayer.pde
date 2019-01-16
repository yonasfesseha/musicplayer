import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

AudioPlayer song0;
Minim minim;
int numberofsong =1;




//Gloabal Variables
color white = #FFFFFF;


void setup () {
  background(#A9B2A7);
  background(#81937D);
  size(500, 600);
  //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

  quitButtonSetup();
  
}

void draw() {
  musicPlayerGUI_Setup();
  quitButtonDraw();
  
}

void mouseClicked() {
  
  quitButtonMouseClicked();
  musicPlayerButtons();
}
