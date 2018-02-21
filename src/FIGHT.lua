function FIGHT ()
	
	mSleep(1000)
	tap(1431,748)--点击开始
	while (true) do 
		x, y = findColor({885, 2, 1030, 129}, 
			"0|0|0xfff4c7,38|9|0xb5a580,23|27|0xfff3d0",
			100, 0, 0, 0)
		if x > -1 then
			break
		end
		mSleep(500)
	end  --判断是否进入 战斗界面	
	mSleep (3000)  ---延时 需改
	x, y = findColor({1650, 746, 1849, 887}, 
		"0|0|0xfff3d3,82|3|0xfef3dc,85|48|0xfff3d3,-4|46|0xfffaea,-13|-23|0x372f25,98|-24|0x362c23,98|47|0x33302c,-13|58|0x272218",
		20, 0, 0, 0)
	if x > -1 then
		
		tap(x,y)
	end
	mSleep(2000)   ---延时 需改
	for a=3,1,-1 do  --点击中间怪
		 tap (942,230)
		 mSleep (200)
	end 
	mSleep(1000)
	while (true )do --第二关目
		x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)
		if x > -1 then
			Victory = Victory + 1 
			break
		else 
			x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0)
			if x > -1 then
				Lose = Lose + 1
				break
			end
		end
		mSleep(1000)
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
	mSleep(1000)
	while (true) do 
		x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)
		if x > -1 then
			
			break
		else 
			x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0)
			if x > -1 then
				
				break
			end
		end
		mSleep(1000)
		x, y = findColorInRegionFuzzy(0x9da5be, 100, 1273, 83, 1579, 446, 0, 0)
		if x == -1 then
			x, y = findColorInRegionFuzzy(0x5f7ac2, 100, 1273, 83, 1579, 446, 0, 0)
			if x > -1 then
				for a=3,1,-1 do  --点击中间怪
					 tap (977,177)
					 mSleep (200)
				end
				break
			end
		end 
	end
	while (true) do --判断胜利 & 失败
		x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)
		if x > -1 then
			mSleep(1000)
			tap (261,697)
			mSleep(1000)
			for k=3 ,1,-1 do 
				tap (261,697)
				mSleep(2000)
				
			end 
			break
		else 
			x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0)
			if x > -1 then
				mSleep(1000)
				tap (261,697)
				mSleep(1000)
				for k=2 ,1,-1 do 
					tap (261,697)
					mSleep(2000)
					
				end 
				break
			end
		end
		mSleep(1000)
	end 
	
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
end