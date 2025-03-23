var _colx, _coly;

_colx = instance_place(x+velh,y, obj_bloco);
_coly = instance_place(x,y+velv, obj_bloco);

if (_colx)
{
    // colisão à direita
    if (velh > 0)
    {
        x = _colx.bbox_left+(x - bbox_right);
    }
    
    // colisão à esquerda
    if (velh < 0)
    {
        x = _colx.bbox_right+(x - bbox_left);
    }
	
    velh = 0;
}

if (_coly)
{
    // colisão à direita
    if (velv > 0)
    {
        y = _coly.bbox_top+(y - bbox_bottom);
    }
    
    // colisão à esquerda
    if (velv < 0)
    {
        y = _coly.bbox_bottom+(y - bbox_top);
    }
	
    velv = 0;
}

x += velh;
y += velv;