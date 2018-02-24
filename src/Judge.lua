function Judge ()
YesOrNo_UI,ret_UI=showUI("ui.json");
if YesOrNo_UI==0 then lua_exit() end
xuanze=tonumber(ret_UI["xuanze"])
if xuanze==0  then  YesOrNo_UI_EQUIP,ret_UI_EQUIP=showUI("UiEquip.json"	); 	equip() 
mSleep(1000)--御魂
elseif xuanze==1 then YesOrNo_UI_AWAKEN,ret_UI_AWAKEN=showUI("Uiawaken.json"	); awaken()
elseif xuanze==2 then toast("2")
elseif xuanze==3 then choice = dialogRet("快说 我 萌不萌 ！！！","", "萌", "不萌",0); 
	if choice == 2 then 
		for a=1,10,1 do 
			toast("我本来就很萌") mSleep(1000) 
		end
	else toast("感谢夸奖 QAQ ") 
	end
end
end