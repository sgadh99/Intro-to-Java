/*This program displays a different quilt with a key press. 
We have three layers of methods which are drawQuilt(), drawRow(), and drawPanel() 
which each accept three parameters of x, y, and size. The program draws a quilt 
initially when the program starts and a new quilt when a key is pressed. When a key is
pressed, the shapes of each panel change (animations confined to a single panel), the
background changes color, and the size of the quilt changes too. We used variables to
get these changes and loops to draw panels in each row, and if statements to display
random shapes and colors. We have five different kinds of panels, as shown by
the square, circle, mini circle, oval, and cornered square. The background is changing 
with every additional key press as well. Moreover, our methods are less than 25 lines
each and we don't use magic numbers. 
*/

//This has the size of the display.
void setup(){
  size(800,800);
}

//These global variables set random colors for the panels and for generating random numbers.
float colorR= random(0,255);
float colorG= random(0,255);
float colorB= random(0,255);
int seed;

//This has the color changing background with every key press and calls the function drawQuilt().
void draw(){
  background(random(0,255),random(0,255),random(0,255));
  randomSeed(seed);
  drawQuilt(0,0,50);
}

/*This method draws each panel and it's different designs. Each panel will either display
a square, circle, mini circle, oval, and cornered square. Each shape will be a different
color as well.
*/
void drawPanel(int panelX, int panelY, int panelSize){
  fill(colorR, colorG, colorB); //Display random color for panel.
  rect(panelX,panelY,panelSize,panelSize);
  float num= random(1,100); //Variable for displaying different types of shapes in each panel.
  
  if(num>1 && num<20){
  fill(colorR/2,colorG/2,colorB/2);
  ellipse(panelX+25,panelY+25,panelSize/2,panelSize/2); //Display circle in panel if variable is between 1 and 20.
  }
  else if(num>21 && num<40){
    fill(colorR/3,colorG/4,colorB/1.5);
    rect(panelX+25,panelY+25,panelSize/2,panelSize/2); //Display cornered square in panel if variable is between 21 and 40.
  }
 else if(num>41 && num<60){
   fill(colorR/4,colorG/3,colorB/6);
   rect(panelX+12,panelY+12,panelSize/2,panelSize/2); //Display square in panel if variable is between 41 and 60.
   }
 else if(num>61 && num<80){
   fill((colorR/2)+100,colorG+20,colorB);
   ellipse(panelX+25,panelY+25,panelSize/2,panelSize); //Display oval in panel if variable is between 61 and 80.
 }
 else if(num>81 && num<100){
  fill(colorR/1.5,colorG/2.5,colorB);
  ellipse(panelX+25,panelY+25,panelSize/4,panelSize/4); //Display small circle in panel if variable is between 81 and 100.
 }
}

/*This method draws a row of panels by calling drawPanel(). The panels will appear 
until the end of the screen.
*/
void drawRow(int rowX, int rowY, int rowSize){
  for(int i=0; i<=width; i=i+100){ //This is the loop for multiple panels for the row.
    drawPanel(rowX, rowY, rowSize);
    rowX=rowX+100;
  }
}

/*This method draws the entire quilt by calling drawRow(). The variable randomSize 
makes the quilt size change at every key press.
*/
void drawQuilt(int quiltX, int quiltY, int quiltSize){
  float randomSize= random(100,800); //Variable for displaying different sizes of the quilt using random().
  for(int i=0; i<=randomSize; i=i+100){ //This is the loop for displaying multiple rows of the quilt.
    drawRow(quiltX, quiltY, quiltSize);
    quiltY=quiltY+100;
  }
}

/*This makes the quilt change in individual panels, background, and overall size if
the key is pressed.
*/
void keyPressed(){
  seed=(int)random(1,100000); 
  /*When the key is pressed, it shows a different variation of the quilt, 
  either longer or shorter in height, different shapes for each panel, and a different
  colored background.
  */
}
