int index = 1;
float angle;
float aa = 1.618*1.618*1.618;

void setup() {
	size(800, 800);
	//font = createFont("Arial", 16, true);
	//println(fibo(15) / (float)fibo(14));
	
	angle = 137.5-90;
	//frameRate(60);
	background(50, 255, 25);
	fill(255, 255, 0);
	//noStroke();
}

void draw() {
	translate(width/2, height/2);
	index += 5;
	rotate(radians(index));
	for (int ii = 0; ii < 2800; ii++) {
		pushMatrix();
		rotate(radians(angle) * ii);
		//rotate(ii);

		fill(255-ii/6, 255-ii/6, 0);
		float aaa = log(ii*1.618)*aa;
		ellipse(ii/5, 0, aaa, aaa);
		popMatrix();
	}
	/*
		translate(width/2, height/2);
		rotate(radians(angle) * index);

		index++;
		//line(0, 0, index, 0);
		ellipse(index/5, 0, log(index*1.618)*1.618*1.618*1.618, log(index*1.618)*1.618*1.618*1.618);
		fill(255-index/6, 255-index/6, 0);
	*/
}

int fibo(int n) {
	if (n == 0) return 0;
	if (n == 1) return 1;
	return fibo(n-1) + fibo(n-2);
}