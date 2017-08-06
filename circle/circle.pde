int r = 0;

void setup() {
	size(600, 700);
	noFill();
}

void draw() {
	ellipse(width/2, height/2, r, r);
	r += 5;
	if (r > width || r > height) {
		noLoop();
	}
}
