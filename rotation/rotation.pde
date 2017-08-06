int col1 = 0, col2 = 0, col3 = 0;
boolean c1 = true, c2 = true, c3 = true;
float rot = 0;

int width = 800;
int width2 = 400;

int xgap = 20;
int ygap = 20;
int xend = width / 2 - 20;
int yend = width / 2 - 20;

void setup() {
  size(820, 820);
  smooth(8);
}

void draw() {
    background(255);

    if (c1) col1+=3;
    else col1-=3;
    if (c2) col2+=6;
    else col2-=6;
    if (c3) col3+=10;
    else col3-=10;

    if (col1 > 255) c1 = false;
    if (col2 > 255) c2 = false;
    if (col3 > 255) c3 = false;
    if (col1 < 0) c1 = true;
    if (col2 < 0) c2 = true;
    if (col3 < 0) c3 = true;

    stroke(col1, col2, col3);

    /*for (int x = 20, y = yend; x <= xend && y >= 20; x+= xgap, y -= ygap) {
        line(x, 20, 20, y);
        line(xend, x, y, yend);
        line(x, 20, 780, x);
        line(20, x, x, 780);
    }*/

    translate(width2, width2);
    rotate(rot);
    rot += 0.03;

    for (int x = 20-width2, y = yend; x <= xend && y >= 20-width2; x+= xgap, y -= ygap) {
        line(x, 20-width2, 20-width2, y);
        line(xend, x, y, yend);
        line(x, 20-width2, 780-width2, x);
        line(20-width2, x, x, 780-width2);
    }

}