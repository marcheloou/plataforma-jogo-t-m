var _left, _right, _jump;

_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));

_jump = keyboard_check(vk_space);
velocidade = 2
var _no_chao = place_meeting(x, y+1, obj_mapa);

if(_left){
	image_xscale = -1
}

if(_right){
	image_xscale = 1
}
sprite_index = spr_player

if(keyboard_check(ord("S"))){
	sprite_index = spr_player_agachado
	

	velh = 0
	velv += gravidade;
} else{
	velh = (_right - _left) * velocidade;
	if(velh != 0){
		sprite_index = spr_player_correndo
	}
	
	if(keyboard_check(vk_shift)){
		
		sprite_index = spr_player_correndo_1
		velocidade = 5
		
	}

	if(_no_chao)
{
    if(_jump)
    {
		
		velv = 0
	    velv = forca_pulo;
    }
}
else
{
    velv += gravidade;
}


}






