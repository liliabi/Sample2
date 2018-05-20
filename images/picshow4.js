var Speed_4 = 10; //速度(毫秒)
var Space_4 = 20; //每次移动(px)
var PageWidth_4 = 254 * 4; //翻页宽度
var interval_4 = 5000; //翻页间隔时间
var fill_4 = 0; //整体移位
var MoveLock_4 = false;
var MoveTimeObj_4;
var MoveWay_4="right";
var Comp_4 = 0;
var AutoPlayObj_4=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_4(){clearInterval(AutoPlayObj_4);AutoPlayObj_4=setInterval('ISL_GoDown_4();ISL_StopDown_4();',interval_4)}
function ISL_GoUp_4(){if(MoveLock_4)return;clearInterval(AutoPlayObj_4);MoveLock_4=true;MoveWay_4="left";MoveTimeObj_4=setInterval('ISL_ScrUp_4();',Speed_4);}
function ISL_StopUp_4(){if(MoveWay_4 == "right"){return};clearInterval(MoveTimeObj_4);if((GetObj('ISL_Cont_4').scrollLeft-fill_4)%PageWidth_4!=0){Comp_4=fill_4-(GetObj('ISL_Cont_4').scrollLeft%PageWidth_4);CompScr_4()}else{MoveLock_4=false}
AutoPlay_4()}
function ISL_ScrUp_4(){if(GetObj('ISL_Cont_4').scrollLeft<=0){GetObj('ISL_Cont_4').scrollLeft=GetObj('ISL_Cont_4').scrollLeft+GetObj('List7_1').offsetWidth}
GetObj('ISL_Cont_4').scrollLeft-=Space_4}
function ISL_GoDown_4(){clearInterval(MoveTimeObj_4);if(MoveLock_4)return;clearInterval(AutoPlayObj_4);MoveLock_4=true;MoveWay_4="right";ISL_ScrDown_4();MoveTimeObj_4=setInterval('ISL_ScrDown_4()',Speed_4)}
function ISL_StopDown_4(){if(MoveWay_4 == "left"){return};clearInterval(MoveTimeObj_4);if(GetObj('ISL_Cont_4').scrollLeft%PageWidth_4-(fill_4>=0?fill_4:fill_4+1)!=0){Comp_4=PageWidth_4-GetObj('ISL_Cont_4').scrollLeft%PageWidth_4+fill_4;CompScr_4()}else{MoveLock_4=false}
AutoPlay_4()}
function ISL_ScrDown_4(){if(GetObj('ISL_Cont_4').scrollLeft>=GetObj('List7_1').scrollWidth){GetObj('ISL_Cont_4').scrollLeft=GetObj('ISL_Cont_4').scrollLeft-GetObj('List7_1').scrollWidth}
GetObj('ISL_Cont_4').scrollLeft+=Space_4}
function CompScr_4(){if(Comp_4==0){MoveLock_4=false;return}
var num,TempSpeed=Speed_4,TempSpace=Space_4;if(Math.abs(Comp_4)<PageWidth_4/2){TempSpace=Math.round(Math.abs(Comp_4/Space_4));if(TempSpace<1){TempSpace=1}}
if(Comp_4<0){if(Comp_4<-TempSpace){Comp_4+=TempSpace;num=TempSpace}else{num=-Comp_4;Comp_4=0}
GetObj('ISL_Cont_4').scrollLeft-=num;setTimeout('CompScr_4()',TempSpeed)}else{if(Comp_4>TempSpace){Comp_4-=TempSpace;num=TempSpace}else{num=Comp_4;Comp_4=0}
GetObj('ISL_Cont_4').scrollLeft+=num;setTimeout('CompScr_4()',TempSpeed)}}
function picrun_ini4(){
GetObj("List8_1").innerHTML=GetObj("List7_1").innerHTML;
GetObj('ISL_Cont_4').scrollLeft=fill_4>=0?fill_4:GetObj('List7_1').scrollWidth-Math.abs(fill_4);
GetObj("ISL_Cont_4").onmouseover=function(){clearInterval(AutoPlayObj_4)}
GetObj("ISL_Cont_4").onmouseout=function(){AutoPlay_4()}
AutoPlay_4();
}
