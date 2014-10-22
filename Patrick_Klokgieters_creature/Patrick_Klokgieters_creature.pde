Class Patrick_Klokgieters_Creature extends creature{
float agitation = 0;
 
void setup() {
    size(600, 600);
}
 
void setAgitation(float newAgitation) {
    agitation = newAgitation;
}
 
void draw(float x, float y) {
  pushMatrix();

    translate(100,100);
    rotate(radians(frameCount));
    background(0);
    stroke(255);
    noFill();
    rect(25, 30, 350, 350);
    line(100, 30, 100, 380);
    line(300, 30, 300, 380);
    line(25, 100, 375, 100); 
    line(25, 300, 375, 300);
    ellipse(65, 65, 55, 55);
    ellipse(335, 65, 55, 55);
    fill(255, 255, 255);
    rect(100, 345, 20, 35);
    rect(130, 345, 20, 35);
    rect(160, 345, 20, 35);
    rect(190, 345, 20, 35);
    rect(220, 345, 20, 35);
    rect(250, 345, 20, 35);
    rect(280, 345, 20, 35);
    rect(100, 300, 20, 35);
    rect(130, 300, 20, 35);
    rect(160, 300, 20, 35);
    rect(190, 300, 20, 35);
    rect(220, 300, 20, 35);
    rect(250, 300, 20, 35);
    rect(280, 300, 20, 35);
    ellipse(335, 65, 5, 5);
    ellipse(65, 65, 5, 5);
  
    
    setAgitation(map(mouseX, 0, height, 0, 1));
    
    float phase = frameCount * 0.025;
    float phaseAddition = map(sin(phase), -1, 1, 0, 0.75);
    
    translate(140, 100); 
    
    for(int i = 0; i < 10; i++){
        float x = sin(phase);
        float radius = map(x, -1, 1, 40, 300);
        float lineWidth = map(x, -1, 1, 0, 3);
        float r = map(x, -1, 1, 0, 255);
        float g = map(x, -1, 1, 255, 0);
        float b = map(x, -1, 1, 255, 125);
        
        // use the lerp function to interpolate between white and colored depending on agitation
        r = lerp(255, r, agitation);
        g = lerp(255, g, agitation);
        b = lerp(255, b, agitation);
        stroke(r, g, b);
        translate(0, 0.6);
        float lineWidthAddition = random(map(agitation, 0, 1, 0, 10));
        strokeWeight(lineWidth + lineWidthAddition);    
        
        triangle(30, 75, 58, 120, 86, 75);
        phase = phase + phaseAddition;
        phaseAddition += 0.1;
    }

    popMatrix();
    
}
}
