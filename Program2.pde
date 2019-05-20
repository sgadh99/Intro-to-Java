/*This program will depict a typical day at UCSC. 
First, clouds will be moving across the screen.
In addition, the banana slug will follow the position of the mouse. 
Finally, the banana slug's pupils are animated to change color.*/ 

void setup(){
  size(1000,1000);
}
  int cloudMove=100; //Variable for increasing x-value of cloud location. 

void draw(){
  int trunkWidth= 20; //Variables for trunk width and height.
  int trunkHeight= 350; 
  
  int treeWidth= 75; //Variables for tree width and height.
  int treeHeight= 400;
  
  int cloud= 100; //Variable for cloud width and height.
  
  int eyeWidth= 30; //Variables for banana slug eye width and height.
  int eyeHeight= 50; 
 
  
  background(130,200,245); //Draw sky.
  
  fill(128); //Gray color for road.
  triangle(width/2, height/2, 0, height, width, width); //Draw road.
  
  fill(100,25,25); //Brown color for trunk.
  rect(100,500,trunkWidth,trunkHeight); //Draw trunks.
  rect(200,400,trunkWidth,trunkHeight);
  rect(300,300,trunkWidth,trunkHeight);
  rect(700,300,trunkWidth,trunkHeight);
  rect(800,400,trunkWidth,trunkHeight);
  rect(900,500,trunkWidth,trunkHeight);
  
  fill(25,100,30); //Green color for tree.
  ellipse(110,500,treeWidth,treeHeight); //Draw trees.
  ellipse(210,400,treeWidth,treeHeight);
  ellipse(310,300,treeWidth,treeHeight);
  ellipse(710,300,treeWidth,treeHeight);
  ellipse(810,400,treeWidth,treeHeight);
  ellipse(910,500,treeWidth,treeHeight);
  
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
 
  translate(mouseX-520,mouseY-520); //Translate shapes of the banana slug so it moves along with the position of the mouse.
  fill(255,255,0); //Yellow color for banana slug.
  noStroke();
  
  //Draw banana slug's head.
  ellipse(500,575,100,100);
  
  //Draw banana slug's body.
  triangle(500,800,500,600,700,800);
  
  //Draw banana slug's eyes.
  fill(255);
  ellipse(480,520,eyeWidth,eyeHeight);
  ellipse(520,520,eyeWidth,eyeHeight);
  
  //Draw banana slug's pupils.
  frameRate(500);
  fill(random(0,255),random(0,255), random(0,255)); //Random values betewen 0-255 are assigned to each R,G,B value to generate different colors for the pupils. 
  ellipse(480,520,eyeWidth-15,eyeHeight-15);
  ellipse(520,520,eyeWidth-15,eyeHeight-15);

}
  
