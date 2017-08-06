ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
	size(1000, 700);
	noStroke();
}

float aaa = 0;
float bbb = 0;

void draw() {
	background(255);
	circles.add(new Circle(random(width), random(height), 5));

	for (Circle circle : circles) {
		//circle.grow();
		circle.show();
		circle.moveDown();
	}

	for (int i = 0; i < circles.size(); ++i) {
		if (circles.get(i).isForRemoving()) {
			circles.remove(i--);
			aaa += 0.2;
		}
	}
	bbb -= 2;
	rect(0, 700-aaa, width, aaa);
	for (float i = 0, j = 0; i < 1000; i++) {
		rect(j++, 700-aaa, 1, (int)(sin(radians(i/6+bbb))*15));
	}
}
