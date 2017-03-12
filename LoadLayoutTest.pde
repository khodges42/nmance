/*
  This is a simple test sketch showing the
  The usage of the SketchMapper with one sketch.

  The sketch in TestSketch.pde is a very simple sketch that draws
  random ellipses.

  This example illustrates loading a default layout at SketchMapper creation.

  *** Note: This library requires that you have
            ControlP5 v. 2.2.5 installed and imported ! ***
*/
import controlP5.*;
import javax.media.jai.*;
import jto.processing.sketch.mapper.*;
import com.sun.media.jai.util.*;
import ixagon.surface.mapper.*;
import processing.opengl.*;
import glitchP5.*; // import GlitchP5
private SketchMapper sketchMapper;

PShape s;
PFont font;
String[] lines;
String[] lines1;
PGraphics pg;
String str = ""+"clouds.pde";
String str1 = ""+"book.txt";
int i=0, j=0;
int x=10, y=15;
int ht = 0;
String message;
String message1;
int k = 0;
GlitchP5 glitchP5; // declare an instance of GlitchP5. only one is needed

public void setup() {
  font = loadFont("RetroComputer-50.vlw");
  size(1200,760, P3D);
  sketchMapper = new SketchMapper(this, "test_layout.xml");
  sketchMapper.addSketch(new TestSketch(this, width / 2, height / 2));
  sketchMapper.addSketch(new head(this, width / 2, height / 2));
  sketchMapper.addSketch(new clouds(this, width / 2, height / 2));
  sketchMapper.addSketch(new textb(this, width / 2, height / 2));
  sketchMapper.addSketch(new tri(this, width / 2, height / 2));
  glitchP5 = new GlitchP5(this); // initiate the glitchP5 instance;


}

public void draw() {
  //must call this for the sketches and the GUI to be rendered.
  sketchMapper.draw();
    
}

public int brownAcid()
{
  glitchP5.glitch(int(random(width)), int(random(height)), int(random(width)), int(random(height)),int(random(width)), int(random(250)), 3, 1.0f, 10, 40);
  return int(random(3,7));
}