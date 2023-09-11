#version 150

uniform float GameTime;
uniform float mode; // 0 - simple 1 - colorful

in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;

void main() {
    //get the colour
    vec2 uv = texCoord0.xy;
    uv = uv * 0.5 + 0.25;
    float xCol = (uv.x - (GameTime * 2000. / 4.0)) * 3.0;
    xCol = mod(xCol, 3.0);
    vec3 horColour = vec3(0.25, 0.25, 0.25);

    if (mode >= 1.) {
        if (xCol < 1.0) {

            horColour.r += 1.0 - xCol;
            horColour.g += xCol;
        }
        else if (xCol < 2.0) {

            xCol -= 1.0;
            horColour.g += 1.0 - xCol;
            horColour.b += xCol;
        }
        else {

            xCol -= 2.0;
            horColour.b += 1.0 - xCol;
            horColour.r += xCol;
        }
        horColour = horColour * vertexColor.rgb;
    } else {
        horColour = vertexColor.rgb;
    }

    //main beam
    uv = (2.0 * uv) - 1.0;
    float beamWidth = abs(1.5 / (30.0 * uv.y));
    vec3 horBeam = vec3(beamWidth);

    fragColor = vec4((horBeam * horColour), length(horBeam) * vertexColor.a);
}
