float n = 0,
	r2 = 0,
	offset = 0;
//int xPos = 0;

void setup() {
	size(1200, 600);
	strokeWeight(2);
	background(0);
	stroke(255, 50);
	noFill();
	colorMode(HSB);
}

void draw() {
	float cc = map(mouseY, 0, height, 0, 255);
	stroke(noise(n) * cc, 200, 200, 15);

	beginShape();
	//offset = noise(n) * 300 - height / 2;

	for (int i = 0; i < width; i += 10, n += 0.03) {
		r2 = noise(n) * 300;
		vertex(i, r2 - offset);
	}
	endShape();

	offset = r2 - mouseY;

	//xPos += 1;
	//if (xPos > width) xPos = 0;
	if (mousePressed) noLoop();
}