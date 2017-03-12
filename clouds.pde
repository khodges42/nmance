public class clouds extends AbstractSketch {

    public clouds(final PApplet parent, final int width, final int height) {
        super(parent, width, height);
    }



@Override
public void draw() {
  graphics.beginDraw();
  graphics.textFont(font,15); 
  graphics.translate(0, 20);
  graphics.fill(int(random(255)));
  
   
 if (i<lines.length) {
    message = lines[i];
  }

            if (j < message.length()) {
              if (y*(i-ht) < height-10){
              graphics.text(message.charAt(j), x*j+10, y*(i-ht));
              j++;
              }
              else{            
                ht = ht + i;
              }
            }
  else { 
    j=0;
    i++;  
  }
  
  if(i>lines.length){
    i=0;
  }
graphics.loadPixels();
 
pixelDrift();
graphics.updatePixels();
  graphics.endDraw();
}


public void pixelDrift(){
for (int i = 0; i < (graphics.width*graphics.height); i++) {
    if(int(random(0,20))==1&&i > 2){graphics.pixels[i-1]=graphics.pixels[i];}
    if(int(random(0,20))==1&& i+graphics.width < (graphics.width*graphics.height)-1){graphics.pixels[i+graphics.width]=graphics.pixels[i];}
  }
}

@Override
public void keyEvent(KeyEvent event) {}

@Override
public void mouseEvent(MouseEvent event) {}

@Override
public void setup() {

  lines = loadStrings(str);

  }
}