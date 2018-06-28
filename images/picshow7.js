var Speed_7 = 10; //速度(毫秒)
var Space_7 = 20; //每次移动(px)
var PageWidth_7 = 254 * 4; //翻页宽度
var interval_7 = 5000; //翻页间隔时间
var fill_7 = 0; //整体移位
var MoveLock_7 = false;
var MoveTimeObj_7;
var MoveWay_7="right";
var Comp_7 = 0;
var AutoPlayObj_7=null;
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay_7(){clearInterval(AutoPlayObj_7);AutoPlayObj_7=setInterval('ISL_GoDown_7();ISL_StopDown_7();',interval_7)}
function ISL_GoUp_7(){if(MoveLock_7)return;clearInterval(AutoPlayObj_7);MoveLock_7=true;MoveWay_7="left";MoveTimeObj_7=setInterval('ISL_ScrUp_7();',Speed_7);}
function ISL_StopUp_7(){if(MoveWay_7 == "right"){return};clearInterval(MoveTimeObj_7);if((GetObj('ISL_Cont_7').scrollLeft-fill_7)%PageWidth_7!=0){Comp_7=fill_7-(GetObj('ISL_Cont_7').scrollLeft%PageWidth_7);CompScr_7()}else{MoveLock_7=false}
AutoPlay_7()}
function ISL_ScrUp_7(){if(GetObj('ISL_Cont_7').scrollLeft<=0){GetObj('ISL_Cont_7').scrollLeft=GetObj('ISL_Cont_7').scrollLeft+GetObj('List11_1').offsetWidth}
GetObj('ISL_Cont_7').scrollLeft-=Space_7}
function ISL_GoDown_7(){clearInterval(MoveTimeObj_7);if(MoveLock_7)return;clearInterval(AutoPlayObj_7);MoveLock_7=true;MoveWay_7="right";ISL_ScrDown_7();MoveTimeObj_7=setInterval('ISL_ScrDown_7()',Speed_7)}
function ISL_StopDown_7(){if(MoveWay_7 == "left"){return};clearInterval(MoveTimeObj_7);if(GetObj('ISL_Cont_7').scrollLeft%PageWidth_7-(fill_7>=0?fill_7:fill_7+1)!=0){Comp_7=PageWidth_7-GetObj('ISL_Cont_7').scrollLeft%PageWidth_7+fill_7;CompScr_7()}else{MoveLock_7=false}
AutoPlay_7()}
function ISL_ScrDown_7(){if(GetObj('ISL_Cont_7').scrollLeft>=GetObj('List11_1').scrollWidth){GetObj('ISL_Cont_7').scrollLeft=GetObj('ISL_Cont_7').scrollLeft-GetObj('List11_1').scrollWidth}
GetObj('ISL_Cont_7').scrollLeft+=Space_7}
function CompScr_7(){if(Comp_7==0){MoveLock_7=false;return}
var num,TempSpeed=Speed_7,TempSpace=Space_7;if(Math.abs(Comp_7)<PageWidth_7/2){TempSpace=Math.round(Math.abs(Comp_7/Space_7));if(TempSpace<1){TempSpace=1}}
if(Comp_7<0){if(Comp_7<-TempSpace){Comp_7+=TempSpace;num=TempSpace}else{num=-Comp_7;Comp_7=0}
GetObj('ISL_Cont_7').scrollLeft-=num;setTimeout('CompScr_7()',TempSpeed)}else{if(Comp_7>TempSpace){Comp_7-=TempSpace;num=TempSpace}else{num=Comp_7;Comp_7=0}
GetObj('ISL_Cont_7').scrollLeft+=num;setTimeout('CompScr_7()',TempSpeed)}}
function picrun_ini7(){
GetObj("List12_1").innerHTML=GetObj("List11_1").innerHTML;
GetObj('ISL_Cont_7').scrollLeft=fill_7>=0?fill_7:GetObj('List11_1').scrollWidth-Math.abs(fill_7);
GetObj("ISL_Cont_7").onmouseover=function(){clearInterval(AutoPlayObj_7)}
GetObj("ISL_Cont_7").onmouseout=function(){AutoPlay_7()}
AutoPlay_7();
}
