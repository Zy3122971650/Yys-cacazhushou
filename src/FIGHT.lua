function FIGHT_EQUIP ()
	Chounv_init = 0
	mSleep(1000)
	
	if EQUIP_TEAM==0 or AWAKEN_TEAM==0 --组队是否开启
	then
		x, y = findColorInRegionFuzzy(0xf4b25f, 100, 1430, 857, 1693, 946, 0, 0)  --开始按钮 可选
		while (true) do 
			if x > -1 then
				tap(1565,901)
				break
			end
		end 
	else  tap(1431,748)  toast("点击")--点击开始 单刷 
	end 
	while (true) do 
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x > -1 then
			Error_TIME=0
			if EQUIP_TEAM==0 or AWAKEN_TEAM==0
			then 
				while (true) do 
					x, y = findColorInRegionFuzzy(0xc66d27, 100, 1673, 781, 1856, 871, 0, 0)
					if x > -1 then
						tap (x,y)
						break
					end
				end
			end
			break	
		elseif 	Error_TIME > 10 then toast("重新加载") Error_TIME=0 WHERE () equip()
		end
		mSleep(500)
		Error_TIME = Error_TIME + 1 
		
	end  --判断是否进入 战斗界面	
	
	------------------------------延时 需改(第一次修改)---------------------------------
	while (true) do ----正真进入 FIGHT 
		Find_Big_Snake()
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0) --“组”字消失
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
		x, y = findColorInRegionFuzzy(0x9da5be, 100, 1273, 83, 1579, 446, 0, 0)
		if x == -1 then
			x, y = findColor({1313, 165, 1497, 441}, 
				"0|0|0x9e8e7d,-38|-80|0x675f48,77|-91|0x3e3e57",
				100, 0, 0, 0)
			if x > -1 then
				for a=3,1,-1 do  --点击中间怪
					 tap (977,177)
				end
				break
			end
		end 
		Find_Big_Snake()
		View()
		VictoryOrLose_Judge()
		toast("第三关卡")
	end
	Chounv_init = 0
	Find_Chounv()
	Chounv_init=0
	VictoryOrLose_EQUIP()
	
	
	while (true) do 
		toast("位置判断ing")
		x, y = findColor({416, 647, 493, 663}, 
			{
				{x=0,y=0,color=0x4c0a0a},
				{x=-23,y=-1,color=0x46322a},
				{x=-31,y=0,color=0x4f0d0d}
			},
			100, 0, 0, 0) --个人挑战页面
		if x > -1 then
			toast("挑战页面 判断正确")
			break
		end 
		
		x, y = findColorInRegionFuzzy(0xf4b25f, 100, 1430, 857, 1693, 946, 0, 0) --组队界面
		if x > -1 then
			break
		end
		
		
	end 
	
	if i~=999 
	then
		i=999
		toast("已跳至御魂判断")
	end 
	equip()
	Error_TIME=0
end
function FIGHT_AWAKEN ()
	mSleep(200)
	if EQUIP_TEAM==0 or AWAKEN_TEAM==0 --组队是否开启
	then
		x, y = findColorInRegionFuzzy(0xf4b25f, 100, 1430, 857, 1693, 946, 0, 0)  --开始按钮 可选
		while (true) do 
			if x > -1 then
				tap(1565,901)
				break
			end
		end 
	else  tap(1431,748)--点击开始 单刷
	end 
	
	
	while (true) do 
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x > -1 then
			Error_TIME=0
			for a=5 ,1,-1 do 
				x, y = findColorInRegionFuzzy(0xc66d27, 100, 1673, 781, 1856, 871, 0, 0)
				if x > -1 then
					tap (x,y)
					break
				end
			end 
			break
		elseif 	Error_TIME > 10 then toast("重新加载") Error_TIME=0 WHERE ()
		end
		mSleep(500)
		Error_TIME = Error_TIME + 1 
		
	end  --判断是否进入 战斗界面	
	
	while (true) do ----正真进入 FIGHT 
		
		
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x == -1 then
			break
		end
	end
	
	if AWAKEN_JIHUO==0
	then 
		for a=3,1,-1 do 
			tap(X_AWAKEN_B,Y_AWAKEN_B)
		end 
	else
		for a=3,1,-1 do 
			tap (X_AWAKEN_S,X_AWAKEN_S)
		end 
	end 
	
	VictoryOrLose_AWAKEN ()
	while (true) do 
		
		x, y = findColorInRegionFuzzy(0xada696, 100, 418, 642, 501, 664, 0, 0)
		if x > -1 then
			break
		else
			x, y = findColorInRegionFuzzy(0xf4b25f, 100, 1430, 857, 1693, 946, 0, 0) --组队界面
			if x > -1 then
				break
			end
		end
		
		
	end	
	
	if i~=999 
	then
		i=999
		awaken()
	end 
	
	Error_TIME=0
end	