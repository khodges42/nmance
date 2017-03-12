
public class head extends AbstractSketch {

    public head(final PApplet parent, final int width, final int height) {
        super(parent, width, height);
    }
    float x = 1;
    int glitchSeed = 2;
    @Override
    public void draw() {

      
    graphics.beginDraw();
    
    
        graphics.clear();
    graphics.directionalLight(126, 126, 126, 0, 0, -1);
    graphics.ambientLight(200,0,0);
    graphics.translate(graphics.width/2,graphics.height);
    graphics.rotateX(radians(90));
    graphics.rotateZ(x);
    //graphics.shape(s, -graphics.width/2,-graphics.height/2);
    graphics.shape(s, 0,0);
    if (second()%3==0){x+=random(0.05,0.1);}
    else{x+=random(-0.05,-0.1);}
    //x+=random(-0.05,-0.1);
    graphics.loadPixels();
    graphics.updatePixels();
    if (second()%glitchSeed == 0){glitchSeed = brownAcid();}

    graphics.endDraw();
    

    }

    @Override
    public void keyEvent(KeyEvent event) {
    }

    @Override
    public void mouseEvent(MouseEvent event) {
  
    }

    @Override
    public void setup() {
  // graphics.background(0);
   s = loadShape("tinker.obj");
   s.scale(3);
   s.setStroke(true);
   s.setStroke(color(0, 0, 0));
   s.setStrokeWeight(0.1f);  
   s.fill(255,0,0);
   //s.setFill(false);
    }
}