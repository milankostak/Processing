class Circle {
	private int x, y, r;
	private color c;

	public Circle (int x1, int y1, int r1) {
		this.x = x1;
		this.y = y1;
		this.r = r1;
	}
	public Circle (float x1, float y1, int r1) {
		this.x = (int)x1;
		this.y = (int)y1;
		this.r = r1;
	}

	public void show() {
		fill(0, 0, 255);
		ellipse(x, y, r, r);
	}

	public void grow() {
		r++;
	}

	public void moveDown() {
		y += (int)random(5);
	}

	public boolean isForRemoving() {
		return x > width || y > height || r > 150;
	}
}