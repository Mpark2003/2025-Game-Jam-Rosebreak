function scr_ResetVariables_Main(){
    //Stage Variables
global.stage=1;
global.area=0;

global.stageActive=0;

//Player Variables
global.life=3;
global.playerType=0;
global.playerStyle=1;
global.playerActive=true;
global.playerDamage=0;
global.miss=0;

//Weapon Variables
global.shotLevel=1;
global.shotExp=0;
global.weaponLevel=0;
global.weaponType=0;

global.bomberCharge=0;
global.bomberActive=false;
global.subEnergy=0;
global.subStock=0;
//Game Variables
score=0;
global.scoreMillion=0;
global.scoreBillion=0;
global.timeActive=true;

global.extend=1;
global.continues=0;
global.maxCredits=1;
global.credits=global.maxCredits;

global.count=0;
global.medalLevel=1;
global.formationBonus=1;
global.medalExp=0;

global.gameActive=true;
global.stageActive=true;
global.pause=false;

global.hudMove=0;
global.gadgetMove=0;
global.screenshakeX=0;
global.screenshakeY=0;

//Enemy/Boss Variables
global.noEscape=true;
global.formationOn=true;
global.formRank=0;
global.enemyKill=0;
global.bulletCancel=0;
global.enemyRank=0;

global.bossName=".";
global.bossHp=0;
global.bossHpLimit=0;
global.bossHpMax=0;
global.bossPhase=0;
global.bossTime=0;
global.bossActive=false;
global.bossOn=false;




}