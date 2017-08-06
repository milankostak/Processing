class Circle {
	private int x, y, r;
	private color c;

	private boolean growing = true;

	public Circle (int x1, int y1, int r1) {
		this.x = x1;
		this.y = y1;
		this.r = r1;
	}

	public Circle (int x1, int y1) {
		this(x1, y1, 3);
	}

	public Circle (float x1, float y1, int r1) {
		this.x = (int) x1;
		this.y = (int) y1;
		this.r = r1;
	}

	public Circle (float x1, float y1) {
		this((int) x1, (int) y1, 3);
	}

	public void show() {
		fill(0, 125, 255);
		//noFill();
		ellipse(x, y, r*2, r*2);
	}

	public boolean edges() {
		return (x + r > width || x - r < 0 || y + r > height || y - r < 0);
	}

	public void grow() {
		if (growing) r++;
	}

	public void moveDown() {
		y += (int)random(5);
	}

	public boolean isForRemoving() {
		return x > width || y > height || r > 150;
	}
}