ArrayList<Circle> circles = new ArrayList<Circle>();
ArrayList<PVector> spots = new ArrayList<PVector>();
PImage img;

void setup() {
	size(790, 334);
	background(0);
	img = loadImage("name.png");
	img.loadPixels();
	for (int x = 0; x < img.width; ++x) {
		for (int y = 0; y < img.height; ++y) {
			int index = x + y * img.width;
			color c = img.pixels[index];
			float b = brightness(c);
			if (b > 1) {
				spots.add(new PVector(x, y));
			}
		}
	}
	frameRate(20);
	noStroke();
}

void draw() {
	stroke(255);
	//strokeWeight(2);

	int count = 0,
		total = 10,
		attempts = 0;
	while (count < total) {
		if (addNewCircle()) count++;
		if (++attempts > 500) {
			noLoop();
			break;
		}
	}

	for (Circle circle : circles) {
		if (circle.growing) {
			if (circle.edges()) {
				circle.growing = false;
			} else {
				for (Circle other : circles) {
					if (circle != other) {
						float d = dist(circle.x, circle.y, other.x, other.y);
						if (d - 2 < circle.r + other.r) {
							circle.growing = false;
							break;
						}
					}
				}
			}

		}
		circle.grow();
		circle.show();
	}

}

boolean addNewCircle() {
	int index = int(random(0, spots.size()));
	PVector spot = spots.get(index);
	float x = spot.x;
	float y = spot.y;
	boolean valid = true;

	for (Circle circle : circles) {
		
		float d = dist(x, y, circle.x, circle.y);
		if (d < circle.r) {
			valid = false;
			break;
		}
	}
	if (valid) circles.add(new Circle(x, y));
	return valid;
}
