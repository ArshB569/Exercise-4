LetterGenerator lg;
String input = "abcd";
PImage shark, white, red, black, back;
PVector b1;
PGraphics pg;

int scaler = 4;
float scaler_f = 1.0 / scaler;

void setup() {
  size(1180, 620, P3D);
  
  shark = loadImage("sea.jpg");
  white = loadImage("white.jpg");
  red = loadImage("red.jpg");
  black = loadImage("black.jpg");
  
  b1 = new PVector(width/2, height/2);

  lg = new LetterGenerator(input, 0, height/2);

  pg = createGraphics(width/scaler, height/scaler, P3D);
  ((PGraphicsOpenGL)pg).textureSampling(3);
}

void draw() {
  pg.beginDraw();
  
  pg.background(127);
  pg.scale(scaler_f);
  lg.run(); 
  
  pg.endDraw();
  
  image(pg, 0, 0, width, height);
}
