function WHERE ()
	id = createHUD()     --创建一个HUD
	init("0",1)
	showHUD(id,"未发现当前位置",30,"0xffff0000","0xffffffff",0,100,0,228,32)      --显示HUD内容
	while ( true ) do 
		
		
		x, y = findColor({0, 0, 1919, 1079}, 
			"0|0|0xe9d595,21|-26|0x7974d2,29|21|0xbf4441",
			90, 0, 1, 1)
		if x > -1 then
			i = 1--庭院
		else
			x, y = findColorInRegionFuzzy(0x558f99, 100, 2, 334, 1918, 708, 0, 0)
			if x > -1 then
				i =2 --町中
			else
				x, y = findColorInRegionFuzzy(0xd7f8ff, 100, 1, 779, 1917, 1073, 0, 0)
				if x > -1 then
					i = 3--召唤界面
				else
					x, y = findColorInRegionFuzzy(0xc6ae8d, 100, 1647, 132, 1825, 306, 0, 0)
					if x > -1 then
						i=4 --探索界面
					else
						x, y = findColorInRegionFuzzy(0x340b0b, 100, 377, 629, 588, 691, 0, 0)
						if x > -1 then
							i=5--大蛇
						end
					end
				end
			end
			
		end
		
		
		if i==1 then Text="庭院" break end 
		if i == 2 then Text="町中"  break end 
		if i == 3 then Text="召唤界面"  break end
		if i == 4 then Text="探索界面" break end
		if i == -1 then Text="未发现当前位置"end
		if i == 5 then Text="大蛇" break end 
		mSleep(500)
		
	end 
	showHUD(id,Text,30,"0xffff0000","0xffffffff",0,100,0,228,32)
end 