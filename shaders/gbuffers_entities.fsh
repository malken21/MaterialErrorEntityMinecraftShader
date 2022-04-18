#version 120

uniform sampler2D texture;

varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 diffuse = texture2D(texture, texcoord) * glcolor;
	diffuse.rgb = vec3(1,0,1);

	gl_FragData[0] = diffuse;
}