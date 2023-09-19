#version 150
// Author @patriciogv - 2015
// http://patriciogonzalezvivo.com

uniform float GameTime;
uniform vec4 color1;
// uniform vec4 color2;
uniform sampler2D Sampler0;

in float vertexDistance;
in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;

float unity_noise_randomValue (vec2 uv)
{
    return fract(sin(dot(uv, vec2(12.9898, 78.233)))*43758.5453);
}

float unity_noise_interpolate (float a, float b, float t)
{
    return (1.0-t)*a + (t*b);
}

float unity_valueNoise (vec2 uv)
{
    vec2 i = floor(uv);
    vec2 f = fract(uv);
    f = f * f * (3.0 - 2.0 * f);

    uv = abs(fract(uv) - 0.5);
    vec2 c0 = i + vec2(0.0, 0.0);
    vec2 c1 = i + vec2(1.0, 0.0);
    vec2 c2 = i + vec2(0.0, 1.0);
    vec2 c3 = i + vec2(1.0, 1.0);
    float r0 = unity_noise_randomValue(c0);
    float r1 = unity_noise_randomValue(c1);
    float r2 = unity_noise_randomValue(c2);
    float r3 = unity_noise_randomValue(c3);

    float bottomOfGrid = unity_noise_interpolate(r0, r1, f.x);
    float topOfGrid = unity_noise_interpolate(r2, r3, f.x);
    float t = unity_noise_interpolate(bottomOfGrid, topOfGrid, f.y);
    return t;
}

float Unity_SimpleNoise_float(vec2 UV, float Scale)
{
    float t = 0.0;

    float freq = pow(2.0, float(0));
    float amp = pow(0.5, float(3-0));
    t += unity_valueNoise(vec2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;

    freq = pow(2.0, float(1));
    amp = pow(0.5, float(3-1));
    t += unity_valueNoise(vec2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;

    freq = pow(2.0, float(2));
    amp = pow(0.5, float(3-2));
    t += unity_valueNoise(vec2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;
    return t;
}

void mainImage(out vec4 fragColor, in vec2 uv) {
    vec4 lerp = vec4(mix(color1, color1, uv.x));
		float iTime = GameTime * 1000.;

    vec2 noiseOffset = vec2(0.5, 0) * iTime * 1.5;
    float noise = Unity_SimpleNoise_float(uv + noiseOffset, 35.);

    float mask = noise + 1. - uv.x;

    vec2 tailOffset = vec2(-0.2, 0) * iTime * 1.5;

    vec3 tail = texture(Sampler0, uv + tailOffset).rgb * mask;


    fragColor = vec4(lerp.rgb * tail, tail);
}

void main() {
    mainImage(fragColor, 1. - vec2(texCoord0.x, texCoord0.y * 0.4 + 0.3));
}