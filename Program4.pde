/*This is our Program 4.
The actions in our program are:
-Animated changing locations for stars in starry sky. 
-Color changing bigger stars.
-When mouse is pressed on person's face, it changes to a smiley face.
-When mouse is pressed on grass, animated color changing flowers appear.
-When mouse is pressed on moon, meteors appear to continue to move across the screen.

We used loops to draw our starry sky, draw multiple bigger stars across the screen, and draw flower petals.
We used conditional statements (if-statements) to get actions when the mouse is pressed on the person's face, grass, and moon.
We used translate() to move the origin of the flower petals.
We used rotate() to draw petals around the flower.
We used variables instead of magic numbers for values that appeared multiple times throughout the program.
*/

void setup(){
  size(1000,800);
}

  int xpos= 1000; //Variables for coordinates of meteors.
  int ypos= 300;
  
void draw(){
  
  int moonSize= 170; //Variable for size of moon. 
  int meteorSize= 25; //Variable for size of meteor.
  
  int starX1= 50; //Variables for three points of triangle which are used to draw stars. 
  int starY1= 50;
  int starX2= 80;
  int starY2= 50;
  int starX3= 65;
  int starY3= 75;
  
  int personX= 80; //Variables for drawing person.
  int personY= 500;
  int personSize= 70;
  int armWidth= 30;
  int armHeight= 10;
  int legWidth= 25;
  int legHeight= 80;
  int shoeWidth= 40;
  int shoeHeight= 20;
  int eyeSize= 10;
  int mouthX= 90;
  int mouthY= 475;
  int mouthWidth= 40;
  int mouthHeight= 5;
  
  float starColorR= random(222,255); //Variables for randomly assigned star colors. 
  float starColorG= random(187,255);
  float starColorB= random(9,255);
  
  background(0,45,85); //Draw sky.
   
  for(int i=0; i<300; i++){ //Draw sparkling stars. 
    fill(255);
    ellipse(random(5,width),random(5,width),4,4);
  }
  if(mouseX>=815 && mouseX<=985 && mouseY>=15 && mouseY<=185){ //If you press on the moon, meteors will appear across the screen.
      fill(240,150,20);
      triangle(xpos,ypos-5,xpos,ypos+5,xpos+100,ypos); //Draw tails of meteors.
      triangle(xpos+50,ypos+45,xpos+50,ypos+55,xpos+150,ypos+50);
      triangle(xpos+100,ypos+95,xpos+100,ypos+105,xpos+200,ypos+100);

      fill(255,0,0);
      ellipse(xpos, ypos, meteorSize, meteorSize); //Draw heads of meteors. 
      ellipse(xpos+50, ypos+50, meteorSize, meteorSize); 
      ellipse(xpos+100, ypos+100, meteorSize, meteorSize); 
      xpos=xpos-30;
      
      
    }
  fill(60,115,30); //Draw grass.
  rect(0,height-200,width,height-600);
  
  fill(230,225,185); //Draw moon.
  ellipse(width-100,height-700,moonSize,moonSize);
  
  while(starX1<width-200 && starX2<width-200 && starX3<width-200 ){ //Loop for drawing multiple stars while the triangles coordinates are less than width. 
    frameRate(5);
    fill(starColorR, starColorG, starColorB); //Make the stars change colors each time the loop is run.     
    noStroke();
    triangle(starX1, starY1, starX2, starY2, starX3, starY3+10); //Draw first star. 
    triangle(starX1, starY1+25, starX2, starY2+25, starX3, starY3-35);
    starX1= starX1+200; //Increment values of x coordinates for stars so more are drawn across the screen. 
    starX2= starX2+200;
    starX3= starX3+200;
  } 
  
  fill(200,130,70);
  rect(personX,personY,60,150); //Draw person's body.
  fill(250,200,140);
  ellipse(personX+30,personY-30,personSize,personSize); //Draw person's face.
  rect(personX-30,personY+50,armWidth,armHeight);
  rect(personX+60,personY+50,armWidth,armHeight); //Draw person's arms.
  fill(30,55,185);
  rect(personX,personY+150,legWidth,legHeight);
  rect(115,650,legWidth,legHeight); //Draw person's legs.
  fill(0);
  ellipse(personX+5,personY+230,shoeWidth,shoeHeight);
  ellipse(personX+55,personY+230,shoeWidth,shoeHeight); //Draw person's shoes.
  ellipse(personX+20,personY-40,eyeSize,eyeSize);
  ellipse(personX+40,personY-40,eyeSize,eyeSize); //Draw person's eyes.
  rect(mouthX,mouthY,mouthWidth,mouthHeight); //Draw person's mouth.

  if(mouseX>75 && mouseX<145 && mouseY>435 && mouseY<505 && mousePressed==true){ //If the cursor is at the face location and the mouse is clicked, a smiley face will display.
    fill(0);
    arc(110,475,40,40,0,PI); 
  }
  else if(mouseX>75 && mouseX<145 && mouseY>435 && mouseY<505 && mousePressed==false){ //If the cursor is at the face location and the mouse is not clicked, the smiley face will remain.
    fill(0);
    arc(110,475,40,40,0,PI);
  }
  else{ //When the cursor leaves the face area, the smiley face goes back to a frown.
    rect(mouthX,mouthY,mouthWidth,mouthHeight); //Draw person's mouth.
  }
}
void mousePressed(){
  float flowerX= random(200,width); //Variable for randomly generated x-coordinate for flower.
  
  float flowerColorR= random(0,255); //Variables for randomly generated flower colors.
  float flowerColorG= random(0,255);
  float flowerColorB= random(0,255);
  
  int numPetals= 10; //Variables for flower shape.
  int petalLength= 60;
  int petalWidth= petalLength/3;
  
  float angle= 2*PI/numPetals; //Variables for rotating flower petals. 
  int i=0;
 
  if(mouseY>600){ //When mouse is pressed on grass, a flower will appear. 
    fill(80,170,30);
    rect(flowerX-10,500,20,100); //Draw stem.
    
    fill(flowerColorR,flowerColorG,flowerColorB);
    translate(flowerX,456); //Translate flower origin to grass area. 
   
    while(i<numPetals){ //Draw flower petals while i is less than number of petals.
      ellipse(0,petalLength/2,petalWidth,petalLength);
      rotate(angle);
      i++;
    }
  }
}
