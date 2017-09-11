int startX=150;
int startY=0;
int endX=150;
int endY=0;
int x = 150;
void setup()
{
  
  size(300,300);
  
}
void draw()
{
  stroke(255,244,100);
  background(0);
  strokeWeight(5);
  while(endX<501)
  {
    endX = startX + ((int)(Math.random() *25)-5);
    endY = startY + ((int)(Math.random() *5)+25);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
  noStroke();
  fill(120,115,115);
  clouds();
  stroke(255,244,190);
  people();
  
  
}
void mousePressed()
{
  startX=150 + ((int) ((Math.random() *-75)+10));
  startY=0;
  endX=150;
  endY=0;
  x= 150 + ((int) ((Math.random() *-75)+50));
}
void people()
{
  ellipse(x,250,10,10);
  strokeWeight(1);
  line(x,280,x,250);
  line(x,280,x+5,285);
  line(x,280,x-5,285);
  line(x,265,x+5,265);  
  line(x,265,x-5,265); 
}
void clouds()
{
  ellipse(45,50,50,50);
  ellipse(105,50,50,50);
  ellipse(75,30,50,50);
  ellipse(75,70,50,50);
  ellipse(165,50,50,50);
  ellipse(225,50,50,50);
  ellipse(195,30,50,50);
  ellipse(195,70,50,50);

}

