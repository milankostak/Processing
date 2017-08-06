int posX = 0;
int posY = 0;

int asdf = 500 - 50 - 1;
int points = 0;

boolean nastavJidlo = true;
int jidloX = 0, jidloY = 0;
PFont font;

void setup() {
	size(500, 500);
	font = createFont("Arial", 16, true);
}

void draw() {
	if (posX > jidloX - 30 && posX < jidloX + 30 && posY > jidloY - 30 && posY < jidloY + 30) {
		nastavJidlo = true;
		points++;
	}

	if (nastavJidlo) {
		 nastavJidlo = false;
		 jidloX = (int) random(51, asdf);
		 jidloX -= jidloX % 5;
		 jidloY = (int) random(51, asdf);
		 jidloY -= jidloY % 5;
	}
	
	background(255);

	fill(200, 50, 50);
	rect(jidloX, jidloY, 20, 20);

	if (keyPressed) {
		if (keyCode == UP) {
			posY -= 5;
		} else if (keyCode == DOWN) {
			posY += 5;
		}
		if (posY < 0) posY = 0;
		else if (posY > asdf) posY = asdf;

		if (keyCode == LEFT) {
			posX -= 5;
		} else if (keyCode == RIGHT) {
			posX += 5;
		}
		if (posX < 0) posX = 0;
		else if (posX > asdf) posX = asdf;
	}
	fill(50, 50, 200);
	rect(posX, posY, 50, 50);

	textFont(font, 20);
	fill(0);
	text(points, 30, 30);
	text("Use arrows to control blue rectangle", 30, 300);
}
