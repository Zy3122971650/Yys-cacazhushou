function FIGHT ()
	Chounv_init = 0
	mSleep(200)
	tap(1431,748)--点击开始
	mSleep(1000)
	while (true) do 
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x > -1 then
			Error_TIME=0
			break
		elseif 	Error_TIME > 10 then toast("重新加载") Error_TIME=0 WHERE ()
		end
		mSleep(500)
		Error_TIME = Error_TIME + 1 
	end  --判断是否进入 战斗界面	
	for a=5 ,1,-1 do 
		x, y = findColorInRegionFuzzy(0xc66d27, 100, 1673, 781, 1856, 871, 0, 0)
		if x > -1 then
			tap (x,y)
			break
		end
	end
	------------------------------延时 需改(第一次修改)---------------------------------
	while (true) do ----正真进入 FIGHT 
		Find_Big_Snake()
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x == -1 then
			break
		end
	   end 			------结束判断----------
	
	mSleep(1000)   ---延时 需改
	for a=3,1,-1 do  --点击中间怪
		 tap (942,230)
		 mSleep (200)
	end 
	
	Find_Chounv()
	
	while (true )do --第二关目
		Find_Big_Snake()
		View()
		VictoryOrLose_Judge()
		x, y = findColorInRegionFuzzy(0x5f5fa1, 100, 1260, 104, 1556, 428, 0, 0)
		if x == -1 then
			x, y = findColorInRegionFuzzy(0x9da5be, 100, 1273, 83, 1579, 446, 0, 0)
			if x > -1 then
				for a=3,1,-1 do  --点击中间怪
					 tap (902,108)
					 mSleep (200)
				end
				break
			end
			
		end
	end 
	Chounv_init = 0
	Find_Chounv()
	
	mSleep(500)
	
	while (true) do  --第三关目
		Find_Big_Snake()
		View()
		VictoryOrLose_Judge()
		x, y = findColorInRegionFuzzy(0x9da5be, 100, 1273, 83, 1579, 446, 0, 0)
		if x == -1 then
			x, y = findColorInRegionFuzzy(0x5f7ac2, 100, 1273, 83, 1579, 446, 0, 0)
			if x > -1 then
				for a=3,1,-1 do  --点击中间怪
					 tap (977,177)
				end
				break
			end
		end 
	end
	Chounv_init = 0
	Find_Chounv()
	Chounv_init=0
	VictoryOrLose()
	
	while (true) do 
		x, y = findColorInRegionFuzzy(0x340b0b, 100, 377, 629, 588, 691, 0, 0)
		if x > -1 then
			break
		end
		
	end 
	if i~=999 
	then
		i=999
		equip()
	end 
	Error_TIME=0
end