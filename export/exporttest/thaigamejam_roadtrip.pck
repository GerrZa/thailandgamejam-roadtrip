GDPC                  	                                                                         L   .godot/exported/133200997/export-211c4410b11697cfdb314d8dd9e31e0a-car.scn   �,      2      �'ܒ���A	՚GI    L   .godot/exported/133200997/export-625ec6af935f3358bcb8f301240776e5-cars.scn  �      �      �tESČ��1y�Z5    L   .godot/exported/133200997/export-ca7373215ca0882a71a3336218a06b7c-level.scn �      �
      g�  ��v� �׼B�    P   .godot/exported/133200997/export-dbbf16d513f9e2b55624e563c14311da-test_level.scn ?            � �k���uqF�(�0��    $   .godot/global_script_class_cache.cfgZ             9>�ʱ�p�˛OL�7u    D   .godot/imported/Untitled.png-07ff82d00bbcd0cb1f042e930fec101a.ctex  0*      �      �J�6E�w'�� ����    L   .godot/imported/car_slice-sheet.png-dbfda2a5106fc160feb89fca64efc4a2.ctex                 9|אMyꌏ�<B���    D   .godot/imported/car_slice.png-e50c560e2ed8a280ebfcdcfebfd4cd43.ctex �      �      ��5�
쁲�e1,"DWQ    @   .godot/imported/icon.svg-0cf4c41542a350e50adbf18735813bd8.ctex  �	      f      ���.��
>`��u    @   .godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex  0J      f      ���.��
>`��u       .godot/uid_cache.bin^      �      �7��k��CM��U4�    $   asset/car/car_slice-sheet.png.import      �       �����R���R���        asset/car/car_slice.png.import  �      �       ��+�˞���P򓸓5`       export/car/icon.svg.import        �       Wɽ"R�V r��U�^    ,   export/car/src/shader/circle_sprite.gdshader�             ��#\,.�J4�@�0�    (   export/car/src/shader/outline.gdshader  �      �      �����s���]�|,�       icon.svg Z      �      �W|��/�\�pF[       icon.svg.import �W      �       ͥ��B����m�l���       project.binary  �`      S      �����<�!���j�        prototypes/Untitled.png.import  ,      �       ��z�l ����o=        prototypes/ptt1/cars.tscn.remap `X      a       ����?x�E��'��        prototypes/ptt1/level.tscn.remap�X      b       ���z=��޷m8�qTQX       src/car/car.tscn.remap  @Y      `       z��Z��!�ULp���    ,   src/level/test_level/test_level.tscn.remap  �Y      g       jw��/�,��[��    $   src/shader/circle_sprite.gdshader   I             ��#\,.�J4�@�0�       src/shader/outline.gdshader 0F      �      �����s���]�|,�                GST2   �         ����               �         �  RIFF�  WEBPVP8L�  /�w`��Ez�'�l"A�b���
�����X������R��!���������h;��C���
��ն-k�^����
,��+���|t��"�=q���{?C���;pI��cL�#��T<p�� ���2��2�����XC!t@>��/�w��S�40�8�S�h���8 ����2%P�	:�@�L9S�P��ݵ��M�x׿w޴a���b��(���x���Y;p�"M>��-�b�%����D 1>�_��W��h�
�G�+4Agj��T��_�]��Q��,P���R�ܬ����@@��P���Cl�bm p�`  D��S)�g,����%�{����?T-���`�R:���R2�Y�	��[�o�r����QQ<ڨ �Ag4"@s?0b4[:*mB[(X�p�r%�-�2B㟚I   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cglhuafuy61e8"
path="res://.godot/imported/car_slice-sheet.png-dbfda2a5106fc160feb89fca64efc4a2.ctex"
metadata={
"vram_texture": false
}
     GST2   �         ����               �         �  RIFF�  WEBPVP8L�  /� w`��Ez�'�l"A�b���
�����X������R��!���������h;��C���
���v�Nd� G�� �Dǒ4@fߒ�=q��@��X����H�]D����H��Ś�{���X=<����t��l9�͎� ~��Z�w�� �>v����h ���hG�R�]�T*��b`T"��Ϋ12k^�L��h.z���t�2k�@��< J�I
������z��`aeq�jmmӂ������b0~_D�	�g��������N�/���n �Y�Z����AY��#>��0
�]�S J�GI�$-Z@�#NP���A����?���9�c�����vT�ɡ4��Ђ,�xhAȎ��O�`���x��_�A��K��          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://wf26b7xbyu5f"
path="res://.godot/imported/car_slice.png-e50c560e2ed8a280ebfcdcfebfd4cd43.ctex"
metadata={
"vram_texture": false
}
            shader_type canvas_item;

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
    GST2   �   �      ����               � �        .  RIFF&  WEBPVP8L  /������!"2�Hrl�m�T����^�$G�A�A8��U���i�;��$I����'cp��uwu��$ɲ��PTNuƌ�k������e��
p(!ڂ'=���S���̢C�mz���HI������ڶ�$�U�m<�c��c�Ծc�Z��n�m��Q�����:�W�ض�$��H�6e��i���h�V���{��NO��$!��Ց`��mI=�;���{��JQ�`�йHR�u1ֳ�]���b���)=��j<���E2b�Y���RB�jQNR[G*�b}PϪ2��f(T��@gI�+�l��f�Q�4���Y��	�F��b%�إۃ�g��b�8{[ųƃ/io�-�	|אe3�(�L��[���N�Wtc����� ޛ�Z@���(��g�_�w���[�&p �jQ�Zh,�J.�
4���E*����]�KEQت�-�!>�=��*o�6��������+�t�� }����N�'����6�'���"7{E�.������W��4�SJ�8k����P������WZ��/���*��/�5ӑG�nO)�7"a6d�S���e���R�@���}IgodIa�&�/q>a.��ڔ�����YK!���0kW}���)�n����+T�Ÿy�aI�����D�HıƄ^,�H�)g��^j��b�6���
�@�Tʲ����Ԃ��B�UN�%$Q�����I�I�_Uj�X[;|pK:�V�b�6w�%,�g	�*�R�~���XQ%�M���P������[�(w˔�PR%
�+��b��/
Kh��/P'G�Q���)��8&k<�)n>�4�bZ�mxZ���v�x����B��{�G�d�f�c.�w�a����]a�s*��Y�OTDZD��v�M�Q��P����5�'�s����L[���oe���×a�n��j����������N�G�'u!׊3�8�m��R\�m�����ꡰdRjg��RR)b�m�|�F�\�<u������Q������<�ص^qQ�]�U��j�,�,2V����.]��s�O�bPX4�SύoX�<����@�r�PkkSX6��+>���Iq<~I�9!W�C��+,	-��<8�d�DV����rw�g��R��rz�TgW�t��8?e�Demm�����Md}��㾷vՋiͺ��J�,�-"*�m�R��@<�\D�a)U�+����hہ��	y��k�����W>��}��� �xpn{��31�l/��/h� ����h-w�]�G��1d��.�� �,�i�����~T\����6�%�6ˀ�u;��>�͎���f����Z5SyT	��'��>��@{�G���� �t%{G[�σT�j�b��=��v"GbM�O� w�oP�|����Т����_�FJ�m�4�����Bho���$�H��;�3� �F��ƌ���J ��d��'�U9��D�7�7��a?H�ڥ�"��6��3��ؑX�t"`���F`y���Z-�Ot&�0{��Nlrf�#1�� No�{uU��^ G�~��P�1�9��"�pPL-���I~T�j�ǀ3;C�� X��\9_�L%1�� �6Ƹ�˒ �A�|"��Έ`��23D�O �;�q�=~ �!��mD�"��� NĀ8",�Ԧ�5K���	�F�P�5�A�u��I�����\@� v.��s�)��k�J�Ͽb�{����Q�@��'�^~}�.mǁk-r�!�*!�	P�?�m3��_�3�Q�L":��j�K��73�
K@�荋"�;�r$�"� �'Z�}s�A�}w���WY��� �*;=����n2��*߁%@�������>x</���	��b��j@��L�T�/X�s{��{�T\�񥣠ۃ��4Iq�h88�������8ꛤ���8���T�V�C�4I��p8��Nm�C�q�7K'mn2^�����j���k��+��g���,�΋�|03+;6i�g�1��a=�"P��Vu�6恱�vӫj�!�q��_��/�!5~~��������8PGW�.׍��;�.�Y������8�|�|���Hh�~���Ȳ�o����ó���?��������:{Ŵ*ǥ�x����z�ko̳���{��ߞ'�����\��&)���xw�h{&��ua����$���R����^�@.�����ΞF����������d�㽱W_��������l�üHލx�x�|)oԹ�����ܲ��v���׹�s��a�/��5�V���^��iش6�'�Y>Y���jϬHG# �k��M+�Gj��J)��0�.m�uf�U9`Iq�5��/k�mȎ����Ti6�����I:A�̞�^]���)�Q۝������<�N�R%8��/���J 5�_�R�{��>
>oz��'7���n��١1f�Ex}`ܿ�s{5ҙf�~���U'6�Mț�����U������^4EG:����j��ڔ� Fr�$1����*kV=o�A�	Ijpha1{��W�p�F����>��nMȰ:�}ؘg~����G�噝�|���G����S~��ɖkb~.=����[	@j��d������q�y��s�$����e�g�Z����t&z�iNR%���)a{
r�6�cn�N�K�G�����5�';��<zŅ�>,TV�;�v�ү�7�ķ���/�ß�w�Ï�/��^q,W��׻s���ݔ�pկ�������9�y�����������o��q����j�����7~�e�%�0����$��#�)�$�d��T��:�ɹ�? v1��6�Z�]���e�R)}�f�ur�N9S�g�dk�>����0�J��J��qt�W���tOM�p��X���^	Y*m�d�G��[����lR�_:�n#�n�rH����Z�ޮ��*�(�i��n�G]�_:��:�_�=��w�ٰ��.f߮�t�6m̾�u��{��n}��31�ԕ7�<����V�+�FCQD�g�^99����q�W��4�S�c��+�F�7�3�M���O�+�`��E����蓍o�x�wh�ŚX��έb>�ڒE=�zVHl�'ou����QY��D=�z�e���m��.iB�,� �}^�cZg��b����%�4S4S4S5�=/�6�����Vw79�)���%�h�0�k��7li��<9��؟��\�-��ߢ5��\�T��̢��J��F�T`AQ��?�9p��Qd3 @تR� ?� �c���A9b"�%�d�"lA�����SEm��(����XoF4��nn�9��h          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://0nhs4ny4mxpu"
path="res://.godot/imported/icon.svg-0cf4c41542a350e50adbf18735813bd8.ctex"
metadata={
"vram_texture": false
}
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source 	   _bundled    script    
   Texture2D    res://icon.svg �r���      local://GDScript_2ii56 >         local://PackedScene_iyntk �      	   GDScript          �  extends Node2D

var acc = 0.0
var x_input = 0
var max_speed = 25

var last_press = 0
var last_dir = "none"

var trigger_press_gap = 0.2

var add_speed = 0.0
const DEF_ADD_SPEED = 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x += acc + add_speed
	last_press += delta
	
	position.x = clamp(position.x, 80, 230)
	
	x_input = Input.get_axis("ui_left", "ui_right")
	
	if Input.is_action_just_pressed("ui_right"):
		if last_dir == "right" and last_press < trigger_press_gap:
			add_speed = DEF_ADD_SPEED
		last_dir = "right"
		last_press = 0
	elif Input.is_action_just_pressed("ui_left"):
		if last_dir == "left" and last_press < trigger_press_gap:
			add_speed = -DEF_ADD_SPEED
		last_dir = "left"
		last_press = 0
	
	
	acc += x_input * 0.1
	
	if abs(acc) < 1.2 and x_input == 0:
		acc = lerp(acc, 0.0, 0.05)
	
	add_speed = lerp(add_speed, 0.0, 0.1)
	
	$Icon.rotation_degrees = 180 * (acc / max_speed)
    PackedScene          	         names "         Cars    script    Node2D    Icon    scale    texture 	   Sprite2D    	   variants                 
     >  p>                node_count             nodes        ��������       ����                            ����                         conn_count              conns               node_paths              editable_instances              version             RSRC            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source    shader    script 	   _bundled       PackedScene     res://prototypes/ptt1/cars.tscn O����`"   Shader (   res://src/shader/circle_sprite.gdshader g��F��Dl
   Texture2D    res://icon.svg �r���      local://GDScript_k1841 �         local://ShaderMaterial_clgik �         local://PackedScene_vc6a0 �      	   GDScript          �  extends Node2D

var obs_speed = 80

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_obs(2)
	$Timer.start(2)
	
	$Timer.connect("timeout",func():
		randomize()
		spawn_obs(randi_range(1,3))
		$Timer.start(randf_range(1,1.5))
		)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Icon.rotation_degrees = 180 * ($Cars.acc / $Cars.max_speed)

func _physics_process(delta: float) -> void:
	for o in $obs_group.get_children():
		o.position.y += obs_speed * delta
		
		if o.position.y > 300:
			o.queue_free()
	
	$Label.text = "speed: " + var_to_str(obs_speed)
	$Label2.text = "wheel: " + var_to_str($Icon.rotation_degrees) + "\n" + "acc: " + var_to_str($Cars.acc)
	
	if Input.is_action_just_pressed("ui_up"):
		obs_speed += 10

func spawn_obs(count):
	for i in range(count):
		randomize()
		var new_sprite = Sprite2D.new()
		new_sprite.texture = load("res://icon.svg")
		new_sprite.scale = Vector2(0.366,0.366)
		new_sprite.position.y = randf_range(-10, -100)
		new_sprite.position.x = randf_range(90,220)
		
		get_node("obs_group").add_child(new_sprite)
	
    ShaderMaterial                         PackedScene          	         names "         Level    script    Node2D    Cars 	   position 
   obs_group    Icon 	   material    scale    texture 	   Sprite2D    Timer    Label    offset_right    offset_bottom    text    Label2    offset_left    offset_top    	   variants                           
     "C  +C         
    ��C  bC
     ?  ?               B     �A      speed:       �?     @C     `B     WC      wheel:       node_count             nodes     M   ��������       ����                      ���                                 ����                
      ����                     	                        ����                      ����                  	                     ����      
                                     conn_count              conns               node_paths              editable_instances              version             RSRC         GST2   �         ����               �         �  RIFF�  WEBPVP8L�  /� w`��Ez�'�l"A�b���
�����X������R��!���������h;��C���
����6R�����@47Id:�9��s'̶@h s_��>�F�e���n#)R��P]���P%Cd\� �%`)��ʷ[� �x�h�_��H�S��v��D�A 4�š�jM/�Z-pVZ���1�l����`��	��e�
[�q�J �)I��̀����s����v��&hȔ�;��Jx��|�1O���+��{���}��ˮ ٯr���o�'Q)��F0��R J�QE@�G�Q�"�y�p��=�r��߷��w7�+��� ���(�`��z [�~8��/��a�"��$x
          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dxfpk0amwpm3g"
path="res://.godot/imported/Untitled.png-07ff82d00bbcd0cb1f042e930fec101a.ctex"
metadata={
"vram_texture": false
}
            RSRC                    PackedScene            ��������                                                  SubViewport    resource_local_to_scene    resource_name    script/source    shader    shader_parameter/width    shader_parameter/height    shader_parameter/outlineColor    script    viewport_path 	   _bundled       Shader "   res://src/shader/outline.gdshader :�o<��e
   Texture2D    res://asset/car/car_slice.png �	�{���   Shader (   res://src/shader/circle_sprite.gdshader g��F��Dl
   Texture2D    res://icon.svg �r���      local://GDScript_tmscv <         local://ShaderMaterial_wx64u O         local://GDScript_xlk8c �         local://ShaderMaterial_ikygv          local://ViewportTexture_3c2td o         local://ShaderMaterial_k527v �         local://PackedScene_68uux �      	   GDScript          �  extends Node2D

var car_slice_text = preload("res://asset/car/car_slice.png")

var x_input = 0.0

var speed = 0.0
var acc = 10
const MAX_SPEED = 5.0
var external_force_x = 0

@export var main_speed = 70;

var press_delta = 0.0
var press_dir = "none"
var MAX_PRESS_DELTA = 0.15

const DEF_DASH_CD = 1.2
var dash_cd = 0.0

var dash_speed = 0.0
const DEF_DASH_SPEED = 340.0

var car_pos = Vector2.ZERO
var car_pos_vel = Vector2.ZERO

func _ready() -> void:
	#init sprite
	for i in range(13):
		var new_slice = Sprite2D.new()
		$SubViewport/car_slice.add_child(new_slice)
		
		new_slice.position.y = -i
		new_slice.centered = true
		new_slice.texture = car_slice_text
		new_slice.hframes = 13
		new_slice.flip_v = true
		new_slice.frame = i
		

func _physics_process(delta: float) -> void:
	
	#car render
	car_pos += car_pos_vel * delta
	if car_pos.y < 0.0:
		car_pos_vel.y += 160 * delta
	$car_render.position = car_pos
	
	car_pos.y = clamp(car_pos.y, -INF, 0.0)
	
	$SubViewport/car_slice.scale = lerp($SubViewport/car_slice.scale, Vector2(1,1), 0.1)
	
	#acceleration
	if Input.is_action_just_pressed("ui_up"):
		main_speed += 20
		$SubViewport/car_slice.scale = Vector2(0.8, 1.3)
	
	#print(speed)
	
	#dash
	if Input.is_action_just_pressed("ui_right"):
		if press_dir == "right" and press_delta > 0.0 and dash_cd < 0.0:
			press_delta = 0.0
			dash_cd = DEF_DASH_CD
			dash()
			
		press_dir = "right"
		press_delta = MAX_PRESS_DELTA
	elif Input.is_action_just_pressed("ui_left"):
		if press_dir == "left" and press_delta > 0.0 and dash_cd < 0.0:
			press_delta = 0.0
			dash_cd = DEF_DASH_CD
			dash()
			
		press_dir = "left"
		press_delta = MAX_PRESS_DELTA
	
	press_delta -= delta
	dash_cd -= delta
	
	#moving input
	x_input = Input.get_axis("ui_left", "ui_right")
	speed += x_input * acc * delta
	
	position.x += speed + (dash_speed * delta)
	dash_speed = lerp(dash_speed, 0.0, 0.1)
	
	print(speed)
	speed = clamp(speed, -MAX_SPEED, MAX_SPEED)
	
	#rotate car
	for s in $SubViewport/car_slice.get_children():
		s.rotation_degrees = lerp(s.rotation_degrees, (90 * 0.75) * (speed / MAX_SPEED), 0.4)

func dash():
	print("DASH")
	match press_dir:
		"right":
			speed = abs(speed)
			dash_speed = DEF_DASH_SPEED
		"left":
			speed = -abs(speed)
			dash_speed = -DEF_DASH_SPEED
	press_dir = "none"
    ShaderMaterial                                  PC        �A                    �?      	   GDScript          9   extends Sprite2D


func _ready() -> void:
	queue_free()
    ShaderMaterial                         �B        �B                    �?         ViewportTexture    	                      ShaderMaterial                         PackedScene    
      	         names "         Car    script    Node2D    car_preview 	   material    texture    hframes    frame 	   Sprite2D    SubViewport    transparent_bg #   canvas_item_default_texture_filter    size 	   Camera2D    offset 
   car_slice    car_render    car_shadow 	   modulate    z_index 	   position    scale    	   variants                                                                     -   @   @   
         ��                                 ��`>   ����         
          @
     0> �>               node_count             nodes     U   ��������       ����                            ����                                             	   	   ����   
                                   ����      	                    ����                      ����      
                           ����                                                 conn_count              conns               node_paths              editable_instances              version             RSRC              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source 	   _bundled    script       PackedScene    res://src/car/car.tscn �Z �	�V      local://GDScript_tlnv8 H         local://PackedScene_qad1e       	   GDScript          �  extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(randi_range(5,8)):
		spawn_obs(1)
		
		randomize()
		
		await get_tree().create_timer(randf_range(0.8, 2.7)).timeout

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	#$obs.position.y += ($Car.main_speed + 80) * delta
	for i in $obs.get_children():
		i.position.y += ($Car.main_speed + 80) * delta
		if i.position.y > 400:
			i.queue_free()
			spawn_obs(1)

func spawn_obs(count):
	for i in range(count):
		randomize()
		var new_sprite = Sprite2D.new()
		new_sprite.texture = load("res://icon.svg")
		new_sprite.scale = Vector2(0.366,0.366)
		new_sprite.position.y = randf_range(-10, -80)
		new_sprite.position.x = randf_range(100, 480-100)
		
		get_node("obs").add_child(new_sprite)
	
    PackedScene          	         names "      
   TestLevel    y_sort_enabled    script    Node2D    Car 	   position    obs    	   variants                                 
     pC  �C      node_count             nodes        ��������       ����                            ���                                 ����              conn_count              conns               node_paths              editable_instances              version             RSRC               shader_type canvas_item;

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
    shader_type canvas_item;

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
GST2   �   �      ����               � �        .  RIFF&  WEBPVP8L  /������!"2�Hrl�m�T����^�$G�A�A8��U���i�;��$I����'cp��uwu��$ɲ��PTNuƌ�k������e��
p(!ڂ'=���S���̢C�mz���HI������ڶ�$�U�m<�c��c�Ծc�Z��n�m��Q�����:�W�ض�$��H�6e��i���h�V���{��NO��$!��Ց`��mI=�;���{��JQ�`�йHR�u1ֳ�]���b���)=��j<���E2b�Y���RB�jQNR[G*�b}PϪ2��f(T��@gI�+�l��f�Q�4���Y��	�F��b%�إۃ�g��b�8{[ųƃ/io�-�	|אe3�(�L��[���N�Wtc����� ޛ�Z@���(��g�_�w���[�&p �jQ�Zh,�J.�
4���E*����]�KEQت�-�!>�=��*o�6��������+�t�� }����N�'����6�'���"7{E�.������W��4�SJ�8k����P������WZ��/���*��/�5ӑG�nO)�7"a6d�S���e���R�@���}IgodIa�&�/q>a.��ڔ�����YK!���0kW}���)�n����+T�Ÿy�aI�����D�HıƄ^,�H�)g��^j��b�6���
�@�Tʲ����Ԃ��B�UN�%$Q�����I�I�_Uj�X[;|pK:�V�b�6w�%,�g	�*�R�~���XQ%�M���P������[�(w˔�PR%
�+��b��/
Kh��/P'G�Q���)��8&k<�)n>�4�bZ�mxZ���v�x����B��{�G�d�f�c.�w�a����]a�s*��Y�OTDZD��v�M�Q��P����5�'�s����L[���oe���×a�n��j����������N�G�'u!׊3�8�m��R\�m�����ꡰdRjg��RR)b�m�|�F�\�<u������Q������<�ص^qQ�]�U��j�,�,2V����.]��s�O�bPX4�SύoX�<����@�r�PkkSX6��+>���Iq<~I�9!W�C��+,	-��<8�d�DV����rw�g��R��rz�TgW�t��8?e�Demm�����Md}��㾷vՋiͺ��J�,�-"*�m�R��@<�\D�a)U�+����hہ��	y��k�����W>��}��� �xpn{��31�l/��/h� ����h-w�]�G��1d��.�� �,�i�����~T\����6�%�6ˀ�u;��>�͎���f����Z5SyT	��'��>��@{�G���� �t%{G[�σT�j�b��=��v"GbM�O� w�oP�|����Т����_�FJ�m�4�����Bho���$�H��;�3� �F��ƌ���J ��d��'�U9��D�7�7��a?H�ڥ�"��6��3��ؑX�t"`���F`y���Z-�Ot&�0{��Nlrf�#1�� No�{uU��^ G�~��P�1�9��"�pPL-���I~T�j�ǀ3;C�� X��\9_�L%1�� �6Ƹ�˒ �A�|"��Έ`��23D�O �;�q�=~ �!��mD�"��� NĀ8",�Ԧ�5K���	�F�P�5�A�u��I�����\@� v.��s�)��k�J�Ͽb�{����Q�@��'�^~}�.mǁk-r�!�*!�	P�?�m3��_�3�Q�L":��j�K��73�
K@�荋"�;�r$�"� �'Z�}s�A�}w���WY��� �*;=����n2��*߁%@�������>x</���	��b��j@��L�T�/X�s{��{�T\�񥣠ۃ��4Iq�h88�������8ꛤ���8���T�V�C�4I��p8��Nm�C�q�7K'mn2^�����j���k��+��g���,�΋�|03+;6i�g�1��a=�"P��Vu�6恱�vӫj�!�q��_��/�!5~~��������8PGW�.׍��;�.�Y������8�|�|���Hh�~���Ȳ�o����ó���?��������:{Ŵ*ǥ�x����z�ko̳���{��ߞ'�����\��&)���xw�h{&��ua����$���R����^�@.�����ΞF����������d�㽱W_��������l�üHލx�x�|)oԹ�����ܲ��v���׹�s��a�/��5�V���^��iش6�'�Y>Y���jϬHG# �k��M+�Gj��J)��0�.m�uf�U9`Iq�5��/k�mȎ����Ti6�����I:A�̞�^]���)�Q۝������<�N�R%8��/���J 5�_�R�{��>
>oz��'7���n��١1f�Ex}`ܿ�s{5ҙf�~���U'6�Mț�����U������^4EG:����j��ڔ� Fr�$1����*kV=o�A�	Ijpha1{��W�p�F����>��nMȰ:�}ؘg~����G�噝�|���G����S~��ɖkb~.=����[	@j��d������q�y��s�$����e�g�Z����t&z�iNR%���)a{
r�6�cn�N�K�G�����5�';��<zŅ�>,TV�;�v�ү�7�ķ���/�ß�w�Ï�/��^q,W��׻s���ݔ�pկ�������9�y�����������o��q����j�����7~�e�%�0����$��#�)�$�d��T��:�ɹ�? v1��6�Z�]���e�R)}�f�ur�N9S�g�dk�>����0�J��J��qt�W���tOM�p��X���^	Y*m�d�G��[����lR�_:�n#�n�rH����Z�ޮ��*�(�i��n�G]�_:��:�_�=��w�ٰ��.f߮�t�6m̾�u��{��n}��31�ԕ7�<����V�+�FCQD�g�^99����q�W��4�S�c��+�F�7�3�M���O�+�`��E����蓍o�x�wh�ŚX��έb>�ڒE=�zVHl�'ou����QY��D=�z�e���m��.iB�,� �}^�cZg��b����%�4S4S4S5�=/�6�����Vw79�)���%�h�0�k��7li��<9��؟��\�-��ߢ5��\�T��̢��J��F�T`AQ��?�9p��Qd3 @تR� ?� �c���A9b"�%�d�"lA�����SEm��(����XoF4��nn�9��h          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://0nhs4ny4mxpu"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 [remap]

path="res://.godot/exported/133200997/export-625ec6af935f3358bcb8f301240776e5-cars.scn"
               [remap]

path="res://.godot/exported/133200997/export-ca7373215ca0882a71a3336218a06b7c-level.scn"
              [remap]

path="res://.godot/exported/133200997/export-211c4410b11697cfdb314d8dd9e31e0a-car.scn"
[remap]

path="res://.godot/exported/133200997/export-dbbf16d513f9e2b55624e563c14311da-test_level.scn"
         list=[]
        <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128"><rect width="124" height="124" x="2" y="2" fill="#363d52" stroke="#212532" stroke-width="4" rx="14"/><g fill="#fff" transform="translate(12.322 12.322)scale(.101)"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042" transform="translate(12.322 12.322)scale(.101)"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></svg>                 �r���   res://icon.svg&�be��M    res://prototypes/ptt1/level.tscnO����`"   res://prototypes/ptt1/cars.tscnFT��$�y   res://prototypes/Untitled.pngi�.IL�#Q   res://asset/car/Untitled.pngi�.IL�#Q   res://asset/car/car_slices.png�Z �	�V   res://src/car/car.tscn��:CAkaa*   res://src/level/test_level/test_level.tscn�	�{���   res://asset/car/Untitled.png�	�{���   res://asset/car/car_slice.png�p�7gH#   res://asset/car/car_slice-sheet.png:�o<��e!   res://src/shader/outline.gdshaderg��F��Dl'   res://src/shader/circle_sprite.gdshader�r���   res://export/car/icon.svg�@z}s��2   res://export/car/src/shader/circle_sprite.gdshader��Dr�k\,   res://export/car/src/shader/outline.gdshader             ECFG
      application/config/name         thaigamejam_roadtrip   application/run/main_scene         uid://c68ddco5n8y3o    application/config/features$   "         4.4    Forward Plus       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      @  )   display/window/size/window_width_override      �  *   display/window/size/window_height_override      �     display/window/stretch/mode         viewport9   rendering/textures/canvas_textures/default_texture_filter                       