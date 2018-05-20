var Speed_5 = 10; //速度(毫秒)
var Space_5 = 20; //每次移动(px)
var PageWidth_5 = 254 * 4; //翻页宽度
var interval_5 = 5000; //翻页间隔时间
var fill_5 = 0; //整体移位
var MoveLock_5 = false;
var MoveTimeObj_5;
var MoveWay_5="right";
var Comp_5 = 0;
var AutoPlayObj_5=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_5(){clearInterval(AutoPlayObj_5);AutoPlayObj_5=setInterval('ISL_GoDown_5();ISL_StopDown_5();',interval_5)}
function ISL_GoUp_5(){if(MoveLock_5)return;clearInterval(AutoPlayObj_5);MoveLock_5=true;MoveWay_5="left";MoveTimeObj_5=setInterval('ISL_ScrUp_5();',Speed_5);}
function ISL_StopUp_5(){if(MoveWay_5 == "right"){return};clearInterval(MoveTimeObj_5);if((GetObj('ISL_Cont_5').scrollLeft-fill_5)%PageWidth_5!=0){Comp_5=fill_5-(GetObj('ISL_Cont_5').scrollLeft%PageWidth_5);CompScr_5()}else{MoveLock_5=false}
AutoPlay_5()}
function ISL_ScrUp_5(){if(GetObj('ISL_Cont_5').scrollLeft<=0){GetObj('ISL_Cont_5').scrollLeft=GetObj('ISL_Cont_5').scrollLeft+GetObj('List9_1').offsetWidth}
GetObj('ISL_Cont_5').scrollLeft-=Space_5}
function ISL_GoDown_5(){clearInterval(MoveTimeObj_5);if(MoveLock_5)return;clearInterval(AutoPlayObj_5);MoveLock_5=true;MoveWay_5="right";ISL_ScrDown_5();MoveTimeObj_5=setInterval('ISL_ScrDown_5()',Speed_5)}
function ISL_StopDown_5(){if(MoveWay_5 == "left"){return};clearInterval(MoveTimeObj_5);if(GetObj('ISL_Cont_5').scrollLeft%PageWidth_5-(fill_5>=0?fill_5:fill_5+1)!=0){Comp_5=PageWidth_5-GetObj('ISL_Cont_5').scrollLeft%PageWidth_5+fill_5;CompScr_5()}else{MoveLock_5=false}
AutoPlay_5()}
function ISL_ScrDown_5(){if(GetObj('ISL_Cont_5').scrollLeft>=GetObj('List9_1').scrollWidth){GetObj('ISL_Cont_5').scrollLeft=GetObj('ISL_Cont_5').scrollLeft-GetObj('List9_1').scrollWidth}
GetObj('ISL_Cont_5').scrollLeft+=Space_5}
function CompScr_5(){if(Comp_5==0){MoveLock_5=false;return}
var num,TempSpeed=Speed_5,TempSpace=Space_5;if(Math.abs(Comp_5)<PageWidth_5/2){TempSpace=Math.round(Math.abs(Comp_5/Space_5));if(TempSpace<1){TempSpace=1}}
if(Comp_5<0){if(Comp_5<-TempSpace){Comp_5+=TempSpace;num=TempSpace}else{num=-Comp_5;Comp_5=0}
GetObj('ISL_Cont_5').scrollLeft-=num;setTimeout('CompScr_5()',TempSpeed)}else{if(Comp_5>TempSpace){Comp_5-=TempSpace;num=TempSpace}else{num=Comp_5;Comp_5=0}
GetObj('ISL_Cont_5').scrollLeft+=num;setTimeout('CompScr_5()',TempSpeed)}}
function picrun_ini5(){
GetObj("List10_1").innerHTML=GetObj("List9_1").innerHTML;
GetObj('ISL_Cont_5').scrollLeft=fill_5>=0?fill_5:GetObj('List9_1').scrollWidth-Math.abs(fill_5);
GetObj("ISL_Cont_5").onmouseover=function(){clearInterval(AutoPlayObj_5)}
GetObj("ISL_Cont_5").onmouseout=function(){AutoPlay_5()}
AutoPlay_5();
}
