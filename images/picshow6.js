var Speed_6 = 10; //速度(毫秒)
var Space_6 = 20; //每次移动(px)
var PageWidth_6 = 254 * 4; //翻页宽度
var interval_6 = 5000; //翻页间隔时间
var fill_6 = 0; //整体移位
var MoveLock_6 = false;
var MoveTimeObj_6;
var MoveWay_6="right";
var Comp_6 = 0;
var AutoPlayObj_6=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_6(){clearInterval(AutoPlayObj_6);AutoPlayObj_6=setInterval('ISL_GoDown_6();ISL_StopDown_6();',interval_6)}
function ISL_GoUp_6(){if(MoveLock_6)return;clearInterval(AutoPlayObj_6);MoveLock_6=true;MoveWay_6="left";MoveTimeObj_6=setInterval('ISL_ScrUp_6();',Speed_6);}
function ISL_StopUp_6(){if(MoveWay_6 == "right"){return};clearInterval(MoveTimeObj_6);if((GetObj('ISL_Cont_6').scrollLeft-fill_6)%PageWidth_6!=0){Comp_6=fill_6-(GetObj('ISL_Cont_6').scrollLeft%PageWidth_6);CompScr_6()}else{MoveLock_6=false}
AutoPlay_6()}
function ISL_ScrUp_6(){if(GetObj('ISL_Cont_6').scrollLeft<=0){GetObj('ISL_Cont_6').scrollLeft=GetObj('ISL_Cont_6').scrollLeft+GetObj('List11_1').offsetWidth}
GetObj('ISL_Cont_6').scrollLeft-=Space_6}
function ISL_GoDown_6(){clearInterval(MoveTimeObj_6);if(MoveLock_6)return;clearInterval(AutoPlayObj_6);MoveLock_6=true;MoveWay_6="right";ISL_ScrDown_6();MoveTimeObj_6=setInterval('ISL_ScrDown_6()',Speed_6)}
function ISL_StopDown_6(){if(MoveWay_6 == "left"){return};clearInterval(MoveTimeObj_6);if(GetObj('ISL_Cont_6').scrollLeft%PageWidth_6-(fill_6>=0?fill_6:fill_6+1)!=0){Comp_6=PageWidth_6-GetObj('ISL_Cont_6').scrollLeft%PageWidth_6+fill_6;CompScr_6()}else{MoveLock_6=false}
AutoPlay_6()}
function ISL_ScrDown_6(){if(GetObj('ISL_Cont_6').scrollLeft>=GetObj('List11_1').scrollWidth){GetObj('ISL_Cont_6').scrollLeft=GetObj('ISL_Cont_6').scrollLeft-GetObj('List11_1').scrollWidth}
GetObj('ISL_Cont_6').scrollLeft+=Space_6}
function CompScr_6(){if(Comp_6==0){MoveLock_6=false;return}
var num,TempSpeed=Speed_6,TempSpace=Space_6;if(Math.abs(Comp_6)<PageWidth_6/2){TempSpace=Math.round(Math.abs(Comp_6/Space_6));if(TempSpace<1){TempSpace=1}}
if(Comp_6<0){if(Comp_6<-TempSpace){Comp_6+=TempSpace;num=TempSpace}else{num=-Comp_6;Comp_6=0}
GetObj('ISL_Cont_6').scrollLeft-=num;setTimeout('CompScr_6()',TempSpeed)}else{if(Comp_6>TempSpace){Comp_6-=TempSpace;num=TempSpace}else{num=Comp_6;Comp_6=0}
GetObj('ISL_Cont_6').scrollLeft+=num;setTimeout('CompScr_6()',TempSpeed)}}
function picrun_ini6(){
GetObj("List12_1").innerHTML=GetObj("List11_1").innerHTML;
GetObj('ISL_Cont_6').scrollLeft=fill_6>=0?fill_6:GetObj('List11_1').scrollWidth-Math.abs(fill_6);
GetObj("ISL_Cont_6").onmouseover=function(){clearInterval(AutoPlayObj_6)}
GetObj("ISL_Cont_6").onmouseout=function(){AutoPlay_6()}
AutoPlay_6();
}
