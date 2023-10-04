GDPC                �                                                                         T   res://.godot/exported/133200997/export-11a3ca2f4e86302abbb9089ef2fd6838-cherry.scn  �      �      `���3��}��!m    ,   res://.godot/global_script_class_cache.cfg  `5             ��Р�8���8~$}P�    P   res://.godot/imported/Cherry_Idle_Anim.png-67d0b18814aea051023f80071026b793.ctex�      n      u�e�\n�㩒ͳ�9    P   res://.godot/imported/Cherry_Run_Anim.png-22d2ff81f563524843cf6762c5a05eae.ctex �      �      ���G���0s]���    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex@'      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  @9      �       C9/A&�O�%a�&       res://Cherry.gd         �      �7>5�(�c( �Vm�    $   res://Cherry_Idle_Anim.png.import          �        J2@"�툡Щ
��)        res://Cherry_Run_Anim.png.importp&      �       �x��N��s��N��       res://cherry.tscn.remap �4      c       ޤ�̵���P��y�       res://icon.svg  �5      �      C��=U���^Qu��U3       res://icon.svg.import    4      �       \�)���,@�v��$|       res://project.binary�9            �3����ɗ��^(    %�͏��%'?Hsextends CharacterBody2D

const SPEED = 500.0

var direction_facing = 1

@onready var animator = $AnimationPlayer

func _ready():
	self.y_sort_enabled = true

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
	
	if direction:
		animator.play("Run")
	else:
		animator.play("Idle")
	
	if Input.is_action_pressed("ui_right"):
		if direction_facing == 1:
			scale.x = 1
			get_node("Sprite2D").skew = -45
		else:
			scale.x = -1
			direction_facing = 1
			get_node("Sprite2D").skew = 45
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_left"):
		if direction_facing == 0:
			scale.x = 1
			get_node("Sprite2D").skew = 45
		else:
			scale.x = -1
			direction_facing = 0
			get_node("Sprite2D").skew = -45
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_up"):
		get_node("CPUParticles2D").emitting = true
	elif Input.is_action_pressed("ui_down"):
		get_node("CPUParticles2D").emitting = true
	else:
		get_node("CPUParticles2D").emitting = false
	
	
	move_and_slide()
���� ������f-RSRC                    PackedScene            ��������                                            !      Idle    hframes    frame    texture    resource_local_to_scene    resource_name    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    tracks/1/type    tracks/1/imported    tracks/1/enabled    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/keys    tracks/2/type    tracks/2/imported    tracks/2/enabled    tracks/2/path    tracks/2/interp    tracks/2/loop_wrap    tracks/2/keys    script    _data 	   _bundled       Script    res://Cherry.gd ��������
   Texture2D    res://icon.svg y�*X�ʒ-
   Texture2D    res://Cherry_Idle_Anim.png P^ރ��P
   Texture2D    res://Cherry_Run_Anim.png ?m����      local://Animation_380aa +         local://Animation_5xac4 X         local://Animation_77kem �	         local://AnimationLibrary_lm1ld p         local://PackedScene_svvew �      
   Animation             Idle       ��L?         	         value 
                                                                   times !                transitions !        �?      values                   update                value                                                                    times !          ���=��L>���>���>   ?��?333?      transitions !        �?  �?  �?  �?  �?  �?  �?  �?      values                                                              update                value                                                                    times !                transitions !        �?      values                      update             
   Animation          o�:	         value 
                                                                   times !                transitions !        �?      values                   update                value                                                                    times !                transitions !        �?      values                      update                value                                                                    times !                transitions !        �?      values                    update             
   Animation             Run       ��?               ��L=	         value 
                                                                   times !                transitions !        �?      values                   update                value                                                                    times !          ��L=���=��>��L>  �>���>33�>���>ff�>   ?��?      transitions !        �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?      values                                                                 	      
               update                value                                                                    times !                transitions !        �?      values                      update                AnimationLibrary                   Idle                 RESET                Run                   PackedScene           	         names "         Cherry    script    CharacterBody2D    CPUParticles2D    z_index 	   position    scale    skew 	   emitting    amount 	   lifetime    randomness    emission_shape    emission_sphere_radius 
   direction    gravity    initial_velocity_max    scale_amount_min    scale_amount_max    color 	   Sprite2D 	   modulate    texture    Idle    hframes    AnimationPlayer 
   libraries    	   variants                    ����
   ���A)|C
     `?1A�>   �I�          
         ?     �?            B
     ��    
              {EC            pA   ���>���>���>  �?               ��p>         
     �@  �@                                           node_count             nodes     W   ��������       ����                            ����                                 	      
               	      
                                                         ����                                                   ����                                       ����                   conn_count              conns               node_paths              editable_instances              version             RSRC����GST2      `      ����                `        6  RIFF.  WEBPVP8L!  /���6�m%��ݩ��z u����`c۶��&���1Q�A����D��6��AaQl��g��=����"�G  ����^��-�&;]<�&����g ���	 ŕ���Ʒr77/s�Ӻ�@���@R`���[[j�d�5>E�ڢ6��h'z1IM�������o�����w�m$�(1�����m$9�6�,ط^��Tw�]�''����6�$��2��C���?��g���r�����r��q�]���:�ߥл���n�P?.�K�wA-���~\|���jԏ��R�]P!i��q�]ʻ+�����~\|���rg[����w)�.�ɕ�~\|7�����+�����w)�.�6�+|"��q�]
��Īn�$dX���.e�I�%Nn����w)��)ʪ��V�^?.�K)w��yzzYUH�ϟ:dY]�{��:�.���8�cJi_���Qv�N�܋7Rp���8��v���������U�5�˜��n@��hcuk�5~n�݋_D�\v=�˞�ܮ����|�����s�:����U�5�˞ܞtv�UN�N����tUvM�r�i�w���@bs-�\�T-���kB�77̺}�����&˱��\�N�*"TU  J���]��0��臵Jʪt���X�e��6C]�a 
����]��]�^0缾���1%SE�(\]��d�Us#Q<׀]O�Zߍ����yW��L %O�x�$E���e�]������SF��5`�ӻ:p��.��`���OVH�LtYnsn3,�LD�������zn�G7<�7X ���� B%�sY�e��\�)ÄѭE]�]�ܹa�m08�i�M��f������n��,�TBױ�kF�;7\���&k�4�w%�%oE����i��TEt�v��r�M��!|��|.��I�oZ&wQ��*��e��nk.����rA�+��e2U�\cw=�˭>��ce�Hpk��$������eAS$��]O�r�O�����n-KNǃc!��r����.�n��6�fZ��ǝ�n�R���zr�S7���0��g��������������p�4K���u]Z���w��F���:�����9���w��{���3=<�&�i���݈����~��c�,�����pq���i����f ��w�w�FW��ֆ۬_�@��j ��P��.���y�����&-�ս���*H:UE�w��.�.i������m�W4W���/�N[?�����^(�Xur6ԏ��kIp7$E�T�(�m�Zl��~\�]߻>��+��#��6�ж�V�l�Qׇ�=��]�s��e�=�E��X��F ���\��^w}�VW��������:�o#��bׯ�>����R�]�,Q�yεEk��E�u��|�+����8�G�z\�]W�$��.����-T5�GR.���E�<��*�1�|AB�ǅ��"]\ŕ�����`(ԏ���U��p�i����4M����v�%Ề�$Vp��vI�Lt��@4>�_>.��%����%����P׷������?��翤� 1[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://co0103k7lgbbt"
path="res://.godot/imported/Cherry_Idle_Anim.png-67d0b18814aea051023f80071026b793.ctex"
metadata={
"vram_texture": false
}
 �vGST2   �  `      ����               �`        b  RIFFZ  WEBPVP8LM  /��6�m%��ݩ��z u����`c۶��&���1Q�A����D��6��AaQl��g��=����"�G  ����^��-�&;]<�&����g ���	 ŕ���Ʒr77/s�Ӻ�@���@R`���[[j�d�mۊ�H���I��r��Ջ�����'+v]������KlI���5��Q}�տ~��������s��� -������l�Ц�]�(A�ew��\A�F���(���+�+bV'F~}/
Pn�]�$WH"�0~}/
Pn�]k$W����.�^��һ�H�f���D���(������lP���Eߋ�[z��ȕ٠z
���E�-��:䊴|"3���(�������a��"&-�]��(@��w��\!mu؛��N�ߕA/�On3p��\%�l,�"��zQzr��ke�J�J�ŭ�]����6ת�U�څ�J�͚��"�E�-�kE�*=����l�p8�!�]T�(T��r��\�m���������"g>#�]��R�r뼫�<ʕ���Q�}�e_���{��.�s)@�u�u^/2�����]d�G��R��J~}/
Pn�s��rUA�W�m����\�m[U�weы[]��9�������ŏ;&�P�N�]�����Gי��,W/vZ,���B�NT�]�(B�u�u�w͛\�����Qf^[,�4d��0��"�E1ʭk�����/�M��Z��D� �i�i025۶���Eߋ�[�\��E��lo��c�GվA%� 8�2�q�+q���{Q�r��"�p"W�;X�����D���i���H7hP����]�����?��kN�
00+�"�q,k:N�i���!D��*~}/
Pn�s]�>�;�6����+1Q!�
��8��6&�q�2A�[~W�(>�u�u�^��+���BPA������a�d0��ߕA/�On]t��7�]j#[*�}}'f<&U���OT��zQ|r�K��#�J���_K3�d�dk������]�����I�y����5-���|��0S��OӀ�ߕA/�On�t��gre��'��8�؇�O�3�'�8�+�^���z��w͓sO[�=�Yq�4u��n^��{���.�^��ܺ�p/28w��8�S��aS��y�weӋ��[�\�셏��ev6��f7qF�{Q�r��"ߵ�r�S�8MZ3M���8��w��� ���^���q췆5��#�+�{����:���\���S���7~W�(=�����ܹ`}������[�.�{����^x��
��f��# ��Eދ"�[�{�C��dP����j`���.�^���zދ<rE&SU��u���Z+���%(�~�:�j�z�m���kh�I�DF��b�E	ʭ��Xp��*9HP�lg.���\�Pn�]��J�P�;T]���f���`��]��(@���ŝ� ��ܑ&H��#j�Y��"�Eʭ�.�\�.���vH�Md�yY�
���2�E�ɭ�.�s�Ng.�\=@$��P�N�������{Q~r뫋5W.�s�> N�
��]��T�.�^��z����i[�"L�B ���zQ|r뮋3W.�E�.NQ�4D�+�^�����=wZW�u�u)Pu��{Q~r뿋��9]�:�	h�*��{Q�r뿋��I]`QM3C��{��s�@ln�]����1sQF+�4���ەǽ��s������^�ы +�Q�&~���*���ܢ�t5�,\���5p��9u�a=|��u�Uv�ϹE3Mz ~��}\�GoN��b��u���m�s��л��ի�"��=rp������X�{�
�Vκ�����w���K���7���������s�J�T #�0P.y[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://si5374upcnf8"
path="res://.godot/imported/Cherry_Run_Anim.png-22d2ff81f563524843cf6762c5a05eae.ctex"
metadata={
"vram_texture": false
}
 �Q`�"GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ M�܎�G'�e�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bm10r0cot23fx"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �����F�t��l�[remap]

path="res://.godot/exported/133200997/export-11a3ca2f4e86302abbb9089ef2fd6838-cherry.scn"
b���'*���ԫ�list=Array[Dictionary]([])
�+��!<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
{h�j~�UFW   ��hL=   res://cherry.tscnP^ރ��P   res://Cherry_Idle_Anim.png?m����   res://Cherry_Run_Anim.pngy�*X�ʒ-   res://icon.svg����;�cECFG      application/config/name          Wildcat_Impact_Anim_Test   application/run/main_scene         res://cherry.tscn      application/config/features   "         4.1    Mobile     application/config/icon         res://icon.svg  9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         mobile  