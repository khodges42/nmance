//based on https://www.openprocessing.org/sketch/111878
//and comments on optimization
public class tri extends AbstractSketch {

    public tri(final PApplet parent, final int width, final int height) {
        super(parent, width, height);
    }
ArrayList part;

int distance=70;
@Override
public void setup()
{
    //graphics.background(0,255);
  part = new ArrayList();
  createParticles();
  graphics.noStroke();
}
@Override
public void draw()
{
          graphics.beginDraw();
  graphics.clear();
  for (int i=0;i<part.size();i++)
  {
    Particle Pn1 = (Particle) part.get(i);
    Pn1.display();
    Pn1.update();
    for (int j = i + 1; j < part.size(); j++) {
      Particle Pn2 = (Particle) part.get(j);
      Pn2.update();
      if (dist(Pn1.x, Pn1.y, Pn2.x, Pn2.y)< distance)
      {
        for (int k = j + 1; k < part.size(); k++) {
          Particle Pn3 = (Particle) part.get(k);
          if (dist(Pn3.x, Pn3.y, Pn2.x, Pn2.y)< distance) {
               graphics.fill(Pn3.c, map(dist(Pn3.x, Pn3.y, Pn2.x, Pn2.y),0,distance,255,0));


            graphics.beginShape(TRIANGLES);
            graphics.vertex(Pn1.x, Pn1.y);
            graphics.vertex(Pn2.x, Pn2.y);
            graphics.vertex(Pn3.x, Pn3.y);
            graphics.endShape();
          }
 
          Pn3.update();
        }
      }
    }
  }
          graphics.endDraw();
}


public void createParticles(){
    for (int i=0;i<60;i++)
  {
    Particle P = new Particle();
    part.add(P);
  }
}
public class Particle {
  float x, y, r;
  color c;
  int i=1, j=1;
  Particle( )
  {
    x = parent.random(0, graphics.width);
    y = parent.random(0, graphics.height);
    r = parent.random(1,5);
    int j = (int)parent.random(0, 4);
    if (j==0)
    {
      c = color(#FA6D00);
    }
    if (j==1)
    {
      c = color(#AFAFAF);
    }
    if (j==2)
    {
      c = color(#717171);
    }
    if (j==3)
    {
      c = color(#FF9D52);
    }
  }
 
  public void display()
  {

    graphics.noStroke();
    graphics.fill(c);

  }
 
  public void update()
  {
    
    x = x + j*0.01;
    y = y + i*0.01;
    if (y > graphics.height-r) i=-1;
    if (y < 0+r) i=1;
    if (x > graphics.width-r) j=-1;
    if (x < 0+r) j=1;
  }
}
    @Override
    public void keyEvent(KeyEvent event) {

    }

    @Override
    public void mouseEvent(MouseEvent event) {

    }

}