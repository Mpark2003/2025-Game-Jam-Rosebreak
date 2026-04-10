function scr_recognizeInput(argument0) {
	switch(argument0){
	    //gamepad
	    case 32769: return "PAD A"; break;
	    case 32770: return "PAD B"; break;
	    case 32771: return "PAD X"; break;
	    case 32772: return "PAD Y"; break;
	    case 32773: return "LB"; break;
	    case 32774: return "RB"; break;
	    case 32775: return "LT"; break;
	    case 32776: return "RT"; break;
	    case 32777: return "SELECT"; break;
	    case 32778: return "START"; break;
	    case 32779: return "L3"; break;
	    case 32780: return "R3"; break;
	    case 32782: return "PAD DOWN"; break;
	    case 32783: return "PAD LEFT"; break;
	    case 32784: return "PAD RIGHT"; break;
	    case 32787: return "PAD UP"; break;
	    //letters
	    case ord("Q"): return "Q"; break;
	    case ord("W"): return "W"; break;
	    case ord("E"): return "E"; break;
	    case ord("R"): return "R"; break;
	    case ord("T"): return "T"; break;
	    case ord("Y"): return "Y"; break;
	    case ord("U"): return "U"; break;
	    case ord("I"): return "I"; break;
	    case ord("O"): return "O"; break;
	    case ord("P"): return "P"; break;
	    case ord("A"): return "A"; break;
	    case ord("S"): return "S"; break;
	    case ord("D"): return "D"; break;
	    case ord("F"): return "F"; break;
	    case ord("G"): return "G"; break;
	    case ord("H"): return "H"; break;
	    case ord("J"): return "J"; break;
	    case ord("K"): return "K"; break;
	    case ord("L"): return "L"; break;
	    case ord("Z"): return "Z"; break;
	    case ord("X"): return "X"; break;
	    case ord("C"): return "C"; break;
	    case ord("V"): return "V"; break;
	    case ord("B"): return "B"; break;
	    case ord("N"): return "N"; break;
	    case ord("M"): return "M"; break;
	    //numpad
	    case vk_numpad0: return "NUM 0"; break;
	    case vk_numpad1: return "NUM 1"; break;
	    case vk_numpad2: return "NUM 2"; break;
	    case vk_numpad3: return "NUM 3"; break;
	    case vk_numpad4: return "NUM 4"; break;
	    case vk_numpad5: return "NUM 5"; break;
	    case vk_numpad6: return "NUM 6"; break;
	    case vk_numpad7: return "NUM 7"; break;
	    case vk_numpad8: return "NUM 8"; break;
	    case vk_numpad9: return "NUM 9"; break;
	    //normal keys
	    case vk_up: return "UP"; break;
	    case vk_down: return "DOWN"; break;
	    case vk_left: return "LEFT"; break;
	    case vk_right: return "RIGHT"; break;
	    case vk_space: return "SPACE"; break;
	    case vk_enter: return "ENTER"; break;
	    case vk_shift: return "SHIFT"; break;
	    case vk_lshift: return "LSHIFT"; break;
	    case vk_rshift: return "RSHIFT"; break;
	    case vk_lcontrol: return "LCTRL"; break;
	    case vk_rcontrol: return "RCTRL"; break;
	    case vk_lalt: return "LALT"; break;
	    case vk_ralt: return "RALT"; break;
	    case vk_tab: return "TAB"; break;
	    case 20 : return "CAP"; break;
	    //F1-12
	    case vk_f1: return "F1"; break;
	    case vk_f2: return "F2"; break;
	    case vk_f3: return "F3"; break;
	    case vk_f4: return "F4"; break;
	    case vk_f5: return "F5"; break;
	    case vk_f6: return "F6"; break;
	    case vk_f7: return "F7"; break;
	    case vk_f8: return "F8"; break;
	    case vk_f9: return "F9"; break;
	    case vk_f10: return "F10"; break;
	    case vk_f11: return "F11"; break;
	    case vk_f12: return "F12"; break;
	    //Numbers
	    case ord("0"): return "0"; break;
	    case ord("1"): return "1"; break;
	    case ord("2"): return "2"; break;
	    case ord("3"): return "3"; break;
	    case ord("4"): return "4"; break;
	    case ord("5"): return "5"; break;
	    case ord("6"): return "6"; break;
	    case ord("7"): return "7"; break;
	    case ord("8"): return "8"; break;
	    case ord("9"): return "9"; break;
	    //Symbols
	    case 186: return ";"; break;
	    case 219: return "["; break;
	    case 221: return "]"; break;
	    case 222: return "'"; break;
	    case 220: return "\\"; break;
	    case 188: return ","; break;
	    case 190: return "."; break;
	    case 191: return "/"; break;
	    // etc
	    default: return string("_"); break;
	}


}
