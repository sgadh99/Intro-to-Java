/* This program has a color changing sky from morning to night with a sun changing to a moon.
Our animation also has clouds moving across the screen.
In addition, it has a banana slug moving across the screen with animated color-changing pupils. 
With our use of multiple if-statements, the clouds and banana slug return to the beginning after they exit.
We used translate() and rotate() to draw the sun rays around the sun.
We used variables instead of magic numbers for drawing objects. 
*/ 

void setup(){
  size(1000,800);
}
  //Variable for increasing x-value of cloud location. 
  int cloudMove=100; 
  
  //Variables for sky color.
  int skyR= 0; 
  int skyG= 220;
  int skyB= 255;
  
  //Variables for sun x and y coordinates, size, and color.
  int sunX= 100;
  int sunY= 100;
  int sunSize= 150; 
  int sunR= 250;
  int sunG= 170;
  int sunB= 80;
  
  //Variable for drawing sun rays.
  int lineX= 0;
  int lineY= 0;
  
  //Variables for changing sky color.
  int greenColorChange= 110;
  int blueColorChange= 128;
  
  //Variable for shifting position of banana slug so it moves across the screen.
  int shift= 0;

void draw(){
  
  //Draw sky.
  background(skyR, skyG, skyB);
  noStroke();
  
  //Draw grass. 
  fill(15,125,30);
  rect(0,600,1000,200);
  
  //Variables for banana slug eye width and height.
  int eyeWidth= 30; 
  int eyeHeight= 50; 
  
  //Variable for cloud width and height.
  int cloud= 100; 
  
  //Draw clouds--this is from our Program2.pde. 
  fill(255); //White color for clouds.
  ellipse(cloudMove,100,cloud,cloud); //Draw first cloud.
  ellipse(cloudMove+40,120,cloud,cloud); 
  ellipse(cloudMove+60,80,cloud,cloud);
  ellipse(cloudMove+100,80,cloud,cloud);
  
  ellipse(cloudMove+300,120,cloud,cloud); //Draw second cloud.
  ellipse(cloudMove+340,140,cloud,cloud);
  ellipse(cloudMove+360,100,cloud,cloud);
  ellipse(cloudMove+400,100,cloud,cloud);
  
  ellipse(cloudMove+600,100,cloud,cloud); //Draw third cloud.
  ellipse(cloudMove+640,120,cloud,cloud);
  ellipse(cloudMove+660,80,cloud,cloud);
  ellipse(cloudMove+700,80,cloud,cloud);
  
  if(cloudMove>1000){
    cloudMove=0; //If the x-value is 1000, the clouds will return back to the left side. 
  }
  else{
  cloudMove= cloudMove+1; //Increment x-value of cloud location so it moves across the screen. 
  }
  
  
  fill(255,255,0); //Yellow color for banana slug.
  noStroke();

  //Draw banana slug's head.
  ellipse(shift+20,575,100,100);
  
  //Draw banana slug's body.
  triangle(shift+20,800,shift+20,600,shift-220,800);
  
  //Draw banana slug's eyes.
  fill(255);
  ellipse(shift,520,eyeWidth,eyeHeight);
  ellipse(shift+40,520,eyeWidth,eyeHeight);
  
  //Draw banana slug's pupils.
  frameRate(500);
  fill(random(0,255),random(0,255), random(0,255)); //Random values betewen 0-255 are assigned to each R,G,B value to generate different colors for the pupils. 
  ellipse(shift,520,eyeWidth-15,eyeHeight-15);
  ellipse(shift+40,520,eyeWidth-15,eyeHeight-15);
  shift++;
  
  if(shift==width){ //If the banana slug reaches the end of the screen, it will go back to the beginning.
    shift=0;
  }
  
  //Decrease color values for sky to make the sky change.
  skyR--;
  skyB--;
  skyG--; 
  if(skyB==0){ //When the value for blue for sky color reaches 0, the sky changes to night. 
    skyR= 0;
    skyG= 220;
    skyB= 255;
  }
  
  if(skyG>=greenColorChange && skyB>=blueColorChange){ //If the sky indicates morning time (smaller values of green and blue), draw a sun. 
    stroke(sunR, sunG, sunB);
    fill(sunR, sunG, sunB); 
    ellipse(sunX, sunY, sunSize, sunSize);
    
    //Draw sun rays.
    strokeWeight(10); 
    
    //Translate rotation point so it is at the center instead of top left corner. 
    translate(sunX, sunY);
    
    //Rotate each sun ray so it appears to go around the sun. 
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4); 
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
    line(lineX, lineY, lineX, lineY-(sunSize));
    rotate(PI/4);
  }
  else if(skyG<=greenColorChange+20 && skyB<=blueColorChange+20){ //If the sky indicates nighttime (larger values of green and blue), draw a moon. 
    noStroke();
    fill(255,255,170);
    ellipse(800,100,150,150);
  }
}
