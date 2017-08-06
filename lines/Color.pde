class Color {
	int r, g, b, a;

	public Color(int r, int g, int b, int a) {
		this.r = r;
		this.g = g;
		this.b = b;
		this.a = a;
	}

	/*public Color() {
		this.r = (int) random(255);
		this.g = (int) random(255);
		this.b = (int) random(255);
		this.a = (int) random(50, 200);
	}*/

	public Color() {
		this.r = random(255) > 127 ? 0 : 255;
		this.g = random(255) > 127 ? 0 : 255;
		this.b = random(255) > 127 ? 0 : 255;
		this.a = (int) random(50, 200);
	}
}