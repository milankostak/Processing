PImage img;
int smallPoint, largePoint;
PFont font;

void setup() {
	size(800, 451);
	smallPoint = 4;
	largePoint = 40;
	imageMode(CENTER);
	img = loadImage("sushi.jpg");
	noStroke();
	background(255);
	font = createFont("Arial", 40, true);
	textFont(font, 40);
}

void draw() {

	for (int i = 0; i < 5000; ++i) {
		float point = map(mouseX, 0, width, smallPoint, largePoint);
		int x = int(random(img.width));
		int y = int(random(img.height));
		color pix = img.get(x, y);
		fill(pix, 128);
		ellipse(x, y, point, point);
	}
	fill(255);
	text("Milan K.", 30, 100);
}
