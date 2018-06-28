var Speed_8 = 10; //速度(毫秒)
var Space_8 = 20; //每次移动(px)
var PageWidth_8 = 254 * 4; //翻页宽度
var interval_8 = 5000; //翻页间隔时间
var fill_8 = 0; //整体移位
var MoveLock_8 = false;
var MoveTimeObj_8;
var MoveWay_8="right";
var Comp_8 = 0;
var AutoPlayObj_8=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_8(){clearInterval(AutoPlayObj_8);AutoPlayObj_8=setInterval('ISL_GoDown_8();ISL_StopDown_8();',interval_8)}
function ISL_GoUp_8(){if(MoveLock_8)return;clearInterval(AutoPlayObj_8);MoveLock_8=true;MoveWay_8="left";MoveTimeObj_8=setInterval('ISL_ScrUp_8();',Speed_8);}
function ISL_StopUp_8(){if(MoveWay_8 == "right"){return};clearInterval(MoveTimeObj_8);if((GetObj('ISL_Cont_8').scrollLeft-fill_8)%PageWidth_8!=0){Comp_8=fill_8-(GetObj('ISL_Cont_8').scrollLeft%PageWidth_8);CompScr_8()}else{MoveLock_8=false}
AutoPlay_8()}
function ISL_ScrUp_8(){if(GetObj('ISL_Cont_8').scrollLeft<=0){GetObj('ISL_Cont_8').scrollLeft=GetObj('ISL_Cont_8').scrollLeft+GetObj('List11_1').offsetWidth}
GetObj('ISL_Cont_8').scrollLeft-=Space_8}
function ISL_GoDown_8(){clearInterval(MoveTimeObj_8);if(MoveLock_8)return;clearInterval(AutoPlayObj_8);MoveLock_8=true;MoveWay_8="right";ISL_ScrDown_8();MoveTimeObj_8=setInterval('ISL_ScrDown_8()',Speed_8)}
function ISL_StopDown_8(){if(MoveWay_8 == "left"){return};clearInterval(MoveTimeObj_8);if(GetObj('ISL_Cont_8').scrollLeft%PageWidth_8-(fill_8>=0?fill_8:fill_8+1)!=0){Comp_8=PageWidth_8-GetObj('ISL_Cont_8').scrollLeft%PageWidth_8+fill_8;CompScr_8()}else{MoveLock_8=false}
AutoPlay_8()}
function ISL_ScrDown_8(){if(GetObj('ISL_Cont_8').scrollLeft>=GetObj('List11_1').scrollWidth){GetObj('ISL_Cont_8').scrollLeft=GetObj('ISL_Cont_8').scrollLeft-GetObj('List11_1').scrollWidth}
GetObj('ISL_Cont_8').scrollLeft+=Space_8}
function CompScr_8(){if(Comp_8==0){MoveLock_8=false;return}
var num,TempSpeed=Speed_8,TempSpace=Space_8;if(Math.abs(Comp_8)<PageWidth_8/2){TempSpace=Math.round(Math.abs(Comp_8/Space_8));if(TempSpace<1){TempSpace=1}}
if(Comp_8<0){if(Comp_8<-TempSpace){Comp_8+=TempSpace;num=TempSpace}else{num=-Comp_8;Comp_8=0}
GetObj('ISL_Cont_8').scrollLeft-=num;setTimeout('CompScr_8()',TempSpeed)}else{if(Comp_8>TempSpace){Comp_8-=TempSpace;num=TempSpace}else{num=Comp_8;Comp_8=0}
GetObj('ISL_Cont_8').scrollLeft+=num;setTimeout('CompScr_8()',TempSpeed)}}
function picrun_ini8(){
GetObj("List12_1").innerHTML=GetObj("List11_1").innerHTML;
GetObj('ISL_Cont_8').scrollLeft=fill_8>=0?fill_8:GetObj('List11_1').scrollWidth-Math.abs(fill_8);
GetObj("ISL_Cont_8").onmouseover=function(){clearInterval(AutoPlayObj_8)}
GetObj("ISL_Cont_8").onmouseout=function(){AutoPlay_8()}
AutoPlay_8();
}
