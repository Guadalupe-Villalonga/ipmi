PImage remolacha; 


void setup(){
  size(800, 400);
  background(255);
  remolacha = loadImage ("remolacha.png");
  image (remolacha, 0, 0 , 250, 350);
}

void draw(){
 fill (211, 26, 75);
 noStroke ();
 ellipse (600, 255, 185, 140);
 triangle (592, 324, 614, 324, 603, 337);
 

 //hoja 1
 fill (79, 193, 31);
 beginShape();
 vertex (578, 119);
 vertex (586, 121);
 vertex(607, 102);
 vertex(607, 93);
 vertex(624, 57);
 vertex (619, 18);
 vertex (594, 6);
 vertex (568, 19);
 vertex (553, 48);
 vertex (565, 75);
 vertex (558, 84);
 endShape();


//hoja 2
 fill (89, 211, 38);
 beginShape();
 vertex (532, 124);
 vertex (541, 123);
 vertex(558, 92);
 vertex (567, 61);
 vertex(563, 24);
 vertex (533, 6);
 vertex (509, 10);
 vertex(489, 3);
 vertex (476, 17);
 vertex (475, 55);
 vertex (476, 73);
 vertex (491, 79);
 vertex (499, 96);
 endShape();
  
//hoja 3
 fill (67, 191, 15);
 beginShape();
 vertex (637, 123);
 vertex (641, 133);
 vertex(664, 119);
 vertex(677, 97);
 vertex(695, 64);
 vertex (676, 25);
 vertex (640, 33);
 vertex (627, 49);
 vertex (605, 60);
 vertex (601, 82);
 vertex (613, 100);
 vertex (628, 108);
 endShape();
 
 //tallo que queda por detras de la hoja 4
 fill(211, 26, 75);
 triangle (606, 187, 620, 187, 670, 41);
 
 //hoja 4
 fill (53, 165, 7);
 beginShape();
 vertex (667, 125);
 vertex (689, 123);
 vertex (731, 105);
 vertex(761, 53);
 vertex(730, 12);
 vertex (705, 11);
 vertex(694, 15);
 vertex (697, 21);
 vertex (666, 39);
 vertex (653, 102);
 endShape();

// tallos 
 fill (211, 26, 75);
 noStroke ();
 triangle (560, 193, 581, 187, 500, 25);
 triangle (575, 190, 590, 187, 596, 30);
 triangle (623, 188, 632, 200, 712, 33);
 
 
 //parte interna de las hojas
 //hoja 1
 noStroke ();
 triangle (504, 35, 507, 38, 530, 24);
 triangle (505, 39, 505, 37, 482, 27);
 triangle (516, 60, 516, 62, 539, 40);
 triangle (512, 55, 512, 58, 485, 45);
 triangle (524, 74, 526, 78, 558, 46);
 triangle (548, 55, 547, 54, 561, 56);
 triangle (522, 84, 524, 87, 491, 66);
 triangle (532, 93, 534, 98, 554, 73);
 
 //hoja 2
 triangle (594, 42, 594, 48, 577, 21
);
 triangle (594, 49, 593, 55, 614, 32);
 triangle (591, 66, 590, 61, 571, 50);

//hoja 3
 triangle (648, 102, 650, 93, 627, 63
);
 triangle (658, 75, 658, 71, 651, 42);
 
 //hoja 4
 triangle (707, 44, 705, 50, 739, 31
);
 triangle(704, 49, 703, 51, 685, 32
) ;
 triangle (696, 69, 738, 53, 695, 68
);
 triangle (693, 75, 676, 44, 691, 78); 
 triangle (688, 79, 687, 80, 739, 69);
 triangle (678, 94, 682, 90, 665, 71);
 triangle (675, 104, 671, 111, 727, 97);
 
 //sombras

 fill(203, 37, 82);
 ellipse (597, 252, 155, 130) ;

 fill (214, 54, 97);
 ellipse (580, 244, 115, 100); 
  
}


void mouseClicked(){
   println (mouseX, mouseY);
}
