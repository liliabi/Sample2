var Speed_3 = 10; //速度(毫秒)
var Space_3 = 20; //每次移动(px)
var PageWidth_3 = 254 * 4; //翻页宽度
var interval_3 = 5000; //翻页间隔时间
var fill_3 = 0; //整体移位
var MoveLock_3 = false;
var MoveTimeObj_3;
var MoveWay_3="right";
var Comp_3 = 0;
var AutoPlayObj_3=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_3(){clearInterval(AutoPlayObj_3);AutoPlayObj_3=setInterval('ISL_GoDown_3();ISL_StopDown_3();',interval_3)}
function ISL_GoUp_3(){if(MoveLock_3)return;clearInterval(AutoPlayObj_3);MoveLock_3=true;MoveWay_3="left";MoveTimeObj_3=setInterval('ISL_ScrUp_3();',Speed_3);}
function ISL_StopUp_3(){if(MoveWay_3 == "right"){return};clearInterval(MoveTimeObj_3);if((GetObj('ISL_Cont_3').scrollLeft-fill_3)%PageWidth_3!=0){Comp_3=fill_3-(GetObj('ISL_Cont_3').scrollLeft%PageWidth_3);CompScr_3()}else{MoveLock_3=false}
AutoPlay_3()}
function ISL_ScrUp_3(){if(GetObj('ISL_Cont_3').scrollLeft<=0){GetObj('ISL_Cont_3').scrollLeft=GetObj('ISL_Cont_3').scrollLeft+GetObj('List5_1').offsetWidth}
GetObj('ISL_Cont_3').scrollLeft-=Space_3}
function ISL_GoDown_3(){clearInterval(MoveTimeObj_3);if(MoveLock_3)return;clearInterval(AutoPlayObj_3);MoveLock_3=true;MoveWay_3="right";ISL_ScrDown_3();MoveTimeObj_3=setInterval('ISL_ScrDown_3()',Speed_3)}
function ISL_StopDown_3(){if(MoveWay_3 == "left"){return};clearInterval(MoveTimeObj_3);if(GetObj('ISL_Cont_3').scrollLeft%PageWidth_3-(fill_3>=0?fill_3:fill_3+1)!=0){Comp_3=PageWidth_3-GetObj('ISL_Cont_3').scrollLeft%PageWidth_3+fill_3;CompScr_3()}else{MoveLock_3=false}
AutoPlay_3()}
function ISL_ScrDown_3(){if(GetObj('ISL_Cont_3').scrollLeft>=GetObj('List5_1').scrollWidth){GetObj('ISL_Cont_3').scrollLeft=GetObj('ISL_Cont_3').scrollLeft-GetObj('List5_1').scrollWidth}
GetObj('ISL_Cont_3').scrollLeft+=Space_3}
function CompScr_3(){if(Comp_3==0){MoveLock_3=false;return}
var num,TempSpeed=Speed_3,TempSpace=Space_3;if(Math.abs(Comp_3)<PageWidth_3/2){TempSpace=Math.round(Math.abs(Comp_3/Space_3));if(TempSpace<1){TempSpace=1}}
if(Comp_3<0){if(Comp_3<-TempSpace){Comp_3+=TempSpace;num=TempSpace}else{num=-Comp_3;Comp_3=0}
GetObj('ISL_Cont_3').scrollLeft-=num;setTimeout('CompScr_3()',TempSpeed)}else{if(Comp_3>TempSpace){Comp_3-=TempSpace;num=TempSpace}else{num=Comp_3;Comp_3=0}
GetObj('ISL_Cont_3').scrollLeft+=num;setTimeout('CompScr_3()',TempSpeed)}}
function picrun_ini2(){
GetObj("List6_1").innerHTML=GetObj("List5_1").innerHTML;
GetObj('ISL_Cont_3').scrollLeft=fill_3>=0?fill_3:GetObj('List5_1').scrollWidth-Math.abs(fill_3);
GetObj("ISL_Cont_3").onmouseover=function(){clearInterval(AutoPlayObj_3)}
GetObj("ISL_Cont_3").onmouseout=function(){AutoPlay_3()}
AutoPlay_3();
}
