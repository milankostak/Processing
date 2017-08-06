class Line {
	Direction direction;
	int x;
	int y;
	Color c;
	int moved = 0;

	public Line(int x, int y, Color c) {
		this.x = x;
		this.y = y;
		this.c = c;
		this.direction = getRandomDirection();
	}

	public Line(int x, int y) {
		this(x, y, new Color());
	}

	public Direction getRandomDirection() {
		float rnd = random(4);
		if (rnd < 1) return Direction.LEFT;
		else if (rnd < 2) return Direction.RIGHT;
		else if (rnd < 3) return Direction.TOP;
		else return Direction.BOTTOM;
	}

	public void setNewDirection() {
		float rnd = random(2);
		if (Direction.LEFT == direction || Direction.RIGHT == direction) {
			if (rnd < 1) direction = Direction.TOP;
			else direction = Direction.BOTTOM;
		}
		else if (Direction.TOP == direction || Direction.BOTTOM == direction) {
			if (rnd < 1) direction = Direction.LEFT;
			else direction = Direction.RIGHT;
		}
	}

	public void draw() {
		fill(c.r, c.g, c.b, c.a);
		ellipse(x - 5, y - 5, 10, 10);
	}

	public void move() {
		if (direction == Direction.LEFT && x > 3) x -= 3;
		else if (direction == Direction.RIGHT && x < width - 3) x += 3;
		else if (direction == Direction.TOP && y > 3) y -= 3;
		else if (direction == Direction.BOTTOM && y < height - 3) y += 3;

		float rnd = random(40, 100);
		if (rnd < moved++) {
			setNewDirection();
			moved = 0;
		}
		else if (x < 5 || y < 5 || x > width - 5 || y > height - 5) {
			setNewDirection();
		}
	}
}