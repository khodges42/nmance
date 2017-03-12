public class textb extends AbstractSketch {

    public textb(final PApplet parent, final int width, final int height) {
        super(parent, width, height);
    }

int time = 0;

@Override
public void draw() {

  graphics.beginDraw();
  graphics.background(0);
  if(millis()/3000<lines1.length){time = millis()/3000;
  graphics.text(lines1[time],10,10,graphics.width-10,graphics.height-10);

  }
  else{time = second() - time;}
  graphics.translate(0, 20);
  graphics.fill(255);
  
graphics.textFont(font,25);      
             
graphics.loadPixels();
 

graphics.updatePixels();
  graphics.endDraw();
}


@Override
public void keyEvent(KeyEvent event) {}

@Override
public void mouseEvent(MouseEvent event) {}

@Override
public void setup() {
  
 
  lines1 = loadStrings(str1);

  }
}