shader_type canvas_item;

uniform vec4 pulse_color : source_color = vec4(1,0,0,1);
uniform float instense : hint_range(0.0, 1.0, 0.0001) = 0.0625;
uniform float freq = 5.0;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	if (COLOR.a > 0.0 && freq > 0.0){
		COLOR = mix(COLOR, pulse_color, instense + (instense * cos(TIME * freq)));
	}
}
