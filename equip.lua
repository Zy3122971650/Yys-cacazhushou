--[[点击御魂
--大蛇左 业原火右 492,1532,0xa8a090;529,496,0x5c6752
--划至层数列表底端  顶端 1-4  底端7-10   From 3 to 1 
--通过识图判断是否在战斗界面
--478,1310,0xc1b8b0 到251,1313,0xc1b8b0
-- 一：258,1314,0xc1b8b0   ERROR 
-- 二：366,1309,0xc1b8b0
-- 三：476,1311,0xc1b8b0
-- 四：588,1314,0xc1b8b0
-- 五：220,1309,0xc1b8b0
-- 六：334,1309,0xc1b8b0
-- 七：235,1314,0xc1b8b0
-- 八：350,1311,0xc1b8b0
-- 九：461,1315,0xc1b8b0
-- 十：574,1311,0xc1b8b0
--御魂：1022,1603,0xbd1d1d
--探索图标：238,1162,0xffffcc
返回：85,51
--]]
--[[点击探索
--判断位置
--点击御魂
--点击层数
--开始
--准备
{在中间怪找色 判断第几关目
	若找不到色，点击复原按钮}
--判断 胜利 or 失败
{找色，红色，黑色}
--胜利，失败（信息记入列表）
循环
--]]
function equip()
	if YesOrNo_UI_EQUIP==1 --开始刷御魂
	then
		showHUD(id,"正在刷御魂",30,"0xffff0000","0xffffffff",0,100,0,228,32)
		EQUIP_LAYER=tonumber(ret_UI_EQUIP["EQUIP_LAYER"])											--获取想要刷的层数
		
		if i==1 --庭院
		then
			for	a=5, 1 ,-1 do
				slide(729.5,208.8,918,909.2)      	  -- 左划置最边缘
				  mSleep(500)
			end 
			tap (X_EXPLORE,Y_EXPLORE)--点击探索
			mSleep(5000)
			
		elseif i==3 
		then 
			tap (X_BACK,Y_BACK)
			  --召唤
		elseif i==2 
		then 
			tap (1575,398) 
			tap (X_EXPLORE,Y_EXPLORE)--点击探索
			mSleep(5000) --町中 
		end      
		tap(X_EQUIP,Y_EQUIP)--点击御魂
		mSleep(2000)
		tap(X_BIGSNAKE,Y_BIGSNAKE)--点击大蛇
		mSleep(2000)
		if (EQUIP_LAYER==0 or EQUIP_LAYER==1 or EQUIP_LAYER	==2 or EQUIP_LAYER==3) --判断顶层 数组由0开始
		then
			for a=3,1,-1 do --循环滑动3次 保证到达顶端
				slide(602,604,238,576) --滑动
				mSleep(1000)
			end
			mSleep(1000)
			if EQUIP_LAYER==0 then tap(X_EQUIP_LAYER1,Y_EQUIP_LAYER1 )end
			if EQUIP_LAYER==1 then tap(X_EQUIP_LAYER2,Y_EQUIP_LAYER2) end
			if EQUIP_LAYER==2 then tap(X_EQUIP_LAYER3,Y_EQUIP_LAYER3) end
			if EQUIP_LAYER==3 then tap(X_EQUIP_LAYER4,Y_EQUIP_LAYER4) end
			if EQUIP_LAYER==4 then tap(X_EQUIP_LAYER5,Y_EQUIP_LAYER5) end
		end
		
		if (EQUIP_LAYER==6 or EQUIP_LAYER==7 or EQUIP_LAYER	==8 or EQUIP_LAYER==9) --判断顶层 数组由0开始
		then
			for a=3,1,-1 do --循环滑动3次 保证到达顶端
				slide(604,602,576,238) --滑动
				mSleep(1000)
			end
			mSleep(1000)
			
			if EQUIP_LAYER==6 then tap(X_EQUIP_LAYER7,Y_EQUIP_LAYER7) end
			if EQUIP_LAYER==7 then tap(X_EQUIP_LAYER8,Y_EQUIP_LAYER8) end
			if EQUIP_LAYER==8 then tap(X_EQUIP_LAYER9,Y_EQUIP_LAYER9) end
			if EQUIP_LAYER==9 then tap(X_EQUIP_LAYER10,Y_EQUIP_LAYER10) end
		end 
		--------------战斗部分----------------------------
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
		mSleep (3000)
		x, y = findColor({1650, 746, 1849, 887}, 
			"0|0|0xfff3d3,82|3|0xfef3dc,85|48|0xfff3d3,-4|46|0xfffaea,-13|-23|0x372f25,98|-24|0x362c23,98|47|0x33302c,-13|58|0x272218",
			20, 0, 0, 0)
		if x > -1 then
	
			tap(x,y)
		end
		mSleep(2000)
		for a=3,1,-1 do  --点击中间怪
			 tap (942,230)
			 mSleep (200)
		end 
		mSleep(1000)
		while (true )do 
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
		----------------END--------------------------------
	else	--调回UI
		hideHUD(id)
		main()
		
	end
	
	
	
end


