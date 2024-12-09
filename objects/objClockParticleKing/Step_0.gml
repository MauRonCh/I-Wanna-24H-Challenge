if (alpha) {
    image_xscale -= 0.09;
    image_yscale = image_xscale;
    image_alpha += 0.03;
    image_angle -= 2;
    
    if (image_angle <= 0) {
        image_angle = 0;
    };
    
    if (image_alpha >= 0.6) {
        image_alpha = 0.6;
    };
    
    if (image_xscale <= 1 && image_alpha >= 0.6) {
        image_xscale = 1;
        image_yscale = image_xscale;
        image_alpha = 0.6;
        alpha = false;
    }
};

if (alpha2) {
    image_xscale += 0.06;
    image_yscale = image_xscale;
    image_alpha -= 0.03;
    image_angle += 2;
    
    if (image_alpha <= 0) {
        instance_destroy();
    }
};


if (instance_exists(objPlayer)) {
    x = objPlayer.x - 1;
    y = objPlayer.y - 3;
};

if (instance_exists(objPlayerFrozenKing)) {
    x = objPlayerFrozenKing.x - 1;
    y = objPlayerFrozenKing.y - 3;
};