#version 300 es
precision highp float;

in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec2 uv = v_texcoord;
    vec4 col = texture2D(tex, uv);
    fragColor = col;
}

