

scr_ResetVariables_Main();

global.checkpoint=saveCheck;
global.stage=saveStage;
room_goto(r_Stage1);
instance_create_depth(0,0,-1000,Black_Fade_Out);
global.lifeMaxStart=saveLife;
global.lifeMax=global.lifeMaxStart;
global.life=global.lifeMax;
global.enemyRankStart=saveRank;
global.enemyRank=global.enemyRankStart;
global.gamemode=saveMode;
global.playerType=saveType;
global.playerWeapon=0;
global.playerColor=saveColor;
global.playerStyle=saveStyle;
instance_destroy();