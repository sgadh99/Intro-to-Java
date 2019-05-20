/*
This program shows our first day at UCSC. Since both of us are in College Nine, we decided to illustrate our first day outside the building surrounded by nature.
*/


//We made the dimensions 1000 by 800 pixels.
size(1000,800);

//This will be the blue sky, or background of the drawing.
background(25,200,250);

//This will be the green grass.
fill(25,200,65);
rect(0,700,1000,100);

//This will be the orange College Nine building.
fill(250,150,0);
rect(400,100,300,600);

//This will be the white windows of the College Nine building.
fill(255);
rect(450,200,200,100);
rect(450,350,200,100);

//This will be the black windowsill of the College Nine building.
fill(0);
line(450,250,650,250);
line(450,400,650,400);
line(550,200,550,300);
line(550,350,550,450);

//This will be the gray door of the College Nine building.
fill(128);
rect(500,500,100,200);

//This will be the black doorknob of the College Nine building.
fill(0);
ellipse(580,600,10,10);

//This will be the first girl.
fill(230,200,150);
ellipse(100,600,50,50); //head
fill(230,150,150);
rect(75,625,50,100); //body
line(60,650,75,680); //arm 1
line(125,680,140,650); //arm 2
line(80,725,80,750); //leg 1
line(120,725,120,750); //leg 2

//This will be the second girl.
fill(230,200,150);
ellipse(220,600,50,50); //head
fill(225,150,230);
rect(195,625,50,100); //body
line(180,650,195,680); //arm 1
line(245,680,260,650); //arm 2
line(200,725,200,750); //leg 1
line(240,725,240,750); //leg 2

//This will be the trees.
fill(60,100,60); 
ellipse(800,300,70,400); //first tree
ellipse(920,300,70,400); //second tree
fill(100,60,60);
rect(790,480,20,220); //first tree trunk
rect(910,480,20,220); //second tree trunk
