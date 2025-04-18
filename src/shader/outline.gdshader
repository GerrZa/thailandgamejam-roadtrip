shader_type canvas_item;

uniform float width;
uniform float height;

uniform vec4 outlineColor : source_color;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	float pixelSizeX = 1.0 / width;
	float pixelSizeY = 1.0 / height;
	
	if (texture(TEXTURE, UV + vec2(pixelSizeX, 0.0)).a > 0.0 || texture(TEXTURE, UV + vec2(-pixelSizeX, 0.0)).a > 0.0 ||texture(TEXTURE, UV + vec2(0.0, pixelSizeY)).a > 0.0 ||texture(TEXTURE, UV + vec2(0.0, -pixelSizeY)).a > 0.0){
		if (COLOR.a < 0.5){
			COLOR = outlineColor;
		}
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
