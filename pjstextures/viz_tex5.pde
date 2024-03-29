var sw = 16;
var hsw = sw/2;

void setup() {
  size(128, 128);
} //setup

void draw() {
	if (audioData.vu == null) return;
	background(0,0,0); 
  if (audioData.kickSource < .01) return;
	stroke(255, 255 ,255);
  noFill();
  strokeWeight(2);

  for (int i = 0; i < 128; i+=sw) {
    float b = ((cos(i+gfxData.frameCounter/5)*.5)+1) * 2;
    for (int j = 0; j < 128; j+=sw) {
      stroke(audioData.kickSource * 10 * ((sin(j+gfxData.frameCounter/2)*.5)+1) * b);
      rect(i,j,hsw,hsw);
    } //for j
  } //for i
} //draw
