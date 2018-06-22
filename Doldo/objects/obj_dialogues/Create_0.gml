dialogue = [];
dialogue_line = 0;

obelisk = 
scr_Add_Dialogue("what a strange stone!", true, spr_doldo_portrait);
scr_Add_Dialogue("well, you look pretty strange too!", false, spr_interlocutor, false, fnt_papyrus);
scr_Add_Dialogue("This is the end", false,);

obelisk_combat =
scr_Add_Dialogue("Have at thee!", true, spr_interlocutor, true, fnt_papyrus);
scr_Add_Dialogue("",false,"",true,fnt_arial,scr_Begin_Combat);