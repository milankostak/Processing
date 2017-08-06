ArrayList<Line> lines = new ArrayList<Line>();
int counter = 0;
PFont font;

void setup() {
	font = createFont("Calibri Light", 700, true);
	size(9933, 3508);
	noStroke();
	frameRate(120);

	for (int i = 0; i < 100; ++i) {
		lines.add(new Line((int)random(width), (int)random(height)));
	}
}

void draw() {
	for (Line line : lines) {
		line.draw();
		line.move();
	}

	if (counter++ % 250 == 0) {
		textFont(font, 700);
		fill(0);
		text("MILAN", 4000, 2000);
		saveFrame();
	}
	println(counter);
}
