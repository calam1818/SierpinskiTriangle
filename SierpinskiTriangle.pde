int len=10;
public void setup()
{
size(400,400);
frameRate(100);
}
public void draw()
{
background(0);
sierpinski(0, 400, 400);
}
public void mousePressed()
{

}
public void sierpinski(int x, int y, int len)
{
if(len<=5){
fill((int)(Math.random()*256), 255, (int)(Math.random()*256));
triangle(mouseX, mouseY, x+len, y, x+len/2, y-len);

}else {
sierpinski(x, y, len/2);
sierpinski(x+len/2, y, len/2);
sierpinski(x+len/4, y-len/2, len/2);
}
}
