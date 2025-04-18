shader_type canvas_item;

float findDistance(vec2 pos1, vec2 pos2){
	return sqrt(pow(pos1.x-pos2.x,2) + pow(pos1.y-pos2.y,2));
}

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	if (findDistance(UV, vec2(0.5)) > 0.5){
		COLOR = vec4(0);
	}
}
