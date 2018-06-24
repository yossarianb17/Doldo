/// @description Draw the combat scene.

switch state
{
	case combat_states.dialogue: 
	{
		draw_sprite(background_spr, 0, 0, 0);
		break;
	}
	case combat_states.raise_weapons:
	{
		draw_sprite(background_spr, 0, 0, 0);
		draw_sprite_ext(enemy_spr, 0, screen_width/2, screen_height/2 - 30, 2, 2, 0, c_white, 1);
		draw_sprite(spr_combatBar,0,0,screen_height);
		break;
	}
}