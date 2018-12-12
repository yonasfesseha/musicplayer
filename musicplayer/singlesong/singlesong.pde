//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') { //play-pause
    //add this code from the previous prototype of play-pause
  }
  if (key == 's' || key == 's') { //stop
    if ( song1.isplaying() ) {
      song1.pause();
      song1.rewind();
    } else {//song is not playing
      song1.rewind();
    }
  }
}
