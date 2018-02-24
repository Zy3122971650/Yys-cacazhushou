function awaken ()
	if YesOrNo_UI_AWAKEN==1 --开始刷觉醒
	then
		showHUD(id,"正在刷觉醒",30,"0xffff0000","0xffffffff",0,100,0,228,32)
		AWAKEN_JIHUO=tonumber(ret_UI_AWAKEN["jihuo"])
		AWAKEN_WHO=tonumber(ret_UI_AWAKEN["AWAKEN_WHO"])--刷哪个BOSS
		AWAKEN_LAYER=tonumber(ret_UI_AWAKEN["AWAKEN_LAYER"])											--获取想要刷的层数
		AWAKEN_TIME_INIT=tonumber(ret_UI_AWAKEN["AWAKEN_TIME"])
		if AWAKEN_TIME_INIT==1 then AWAKEN_TIME=9
		elseif AWAKEN_TIME_INIT==2 then AWAKEN_TIME=99
		elseif AWAKEN_TIME_INIT==3 then AWAKEN_TIME=999
		elseif AWAKEN_TIME_INIT==4 then AWAKEN_TIME=9999999
		end
		if i==1 --庭院
		then
			x, y = findColorInRegionFuzzy(0xab2323, 100, 498, 870, 701, 1029, 0, 0)
			if x > -1 then
				tap (1865,961)
			end
			for	a=5, 1 ,-1 do
				slide(729.5,208.8,918,909.2)      	  -- 左划置最边缘
				  mSleep(500)
			end 
			tap (X_EXPLORE,Y_EXPLORE)--点击探索
			mSleep(5000)
			tap(X_AWAKEN,Y_AWAKEN)--点击觉醒
			mSleep(2000)
			if AWAKEN_WHO==0 then tap(X_WINDY,Y_WINDY)
			elseif AWAKEN_WHO==1 then tap(X_RAIN,Y_RAIN)
			elseif AWAKEN_WHO==2 then tap(X_THUNDER,Y_THUNDER)
			elseif AWAKEN_WHO==3 then tap(X_FIRE,Y_FIRE)
			end
			mSleep(2000)
		elseif i==3 
		then 
			tap (X_BACK,Y_BACK)
			  --召唤
			 tap(X_AWAKEN,Y_AWAKEN)--点击觉醒
			mSleep(2000)
			if AWAKEN_WHO==0 then tap(X_WINDY,Y_WINDY)
			elseif AWAKEN_WHO==1 then tap(X_RAIN,Y_RAIN)
			elseif AWAKEN_WHO==2 then tap(X_THUNDER,Y_THUNDER)
			elseif AWAKEN_WHO==3 then tap(X_FIRE,Y_FIRE)
			end
			mSleep(2000)
		elseif i==999 -- 第二次开始
		then 
			
			if AWAKEN_TIME_INIT==4 
			then 
				while (true) do 
					
					 FIGHT_AWAKEN ()
				end
			else
				for j=AWAKEN_TIME,1,-1 do
					
					FIGHT_AWAKEN()
				end
			end
		elseif i==2 
		then 
			tap (1575,398) 
			tap (X_EXPLORE,Y_EXPLORE)--点击探索
			mSleep(5000) --町中 
			tap(X_AWAKEN,Y_AWAKEN)--点击觉醒
			mSleep(2000)
			if AWAKEN_WHO==0 then tap(X_WINDY,Y_WINDY)
			elseif AWAKEN_WHO==1 then tap(X_RAIN,Y_RAIN)
			elseif AWAKEN_WHO==2 then tap(X_THUNDER,Y_THUNDER)
			elseif AWAKEN_WHO==3 then tap(X_FIRE,Y_FIRE)
			end
			mSleep(2000)
		elseif i==6
		then 
			mSleep(500)
		elseif i==4	
		then
			mSleep(2000)
			 tap(X_AWAKEN,Y_AWAKEN)--点击觉醒
			mSleep(2000)
			if AWAKEN_WHO==0 then tap(X_WINDY,Y_WINDY)
			elseif AWAKEN_WHO==1 then tap(X_RAIN,Y_RAIN)
			elseif AWAKEN_WHO==2 then tap(X_THUNDER,Y_THUNDER)
			elseif AWAKEN_WHO==3 then tap(X_FIRE,Y_FIRE)
			end
			mSleep(2000)
		end      
		
		if (AWAKEN_LAYER==0 or AWAKEN_LAYER==1 or AWAKEN_LAYER	==2 or AWAKEN_LAYER==3) --判断顶层 数组由0开始
		then
			for a=3,1,-1 do --循环滑动3次 保证到达顶端
				slide(602,604,238,576) --滑动
				mSleep(1000)
			end
			mSleep(1000)
			if AWAKEN_LAYER==0 then tap(X_AWAKEN_LAYER1,Y_AWAKEN_LAYER1 )end
			if AWAKEN_LAYER==1 then tap(X_AWAKEN_LAYER2,Y_AWAKEN_LAYER2) end
			if AWAKEN_LAYER==2 then tap(X_AWAKEN_LAYER3,Y_AWAKEN_LAYER3) end
			if AWAKEN_LAYER==3 then tap(X_AWAKEN_LAYER4,Y_AWAKEN_LAYER4) end
			if AWAKEN_LAYER==4 then tap(X_AWAKEN_LAYER5,Y_AWAKEN_LAYER5) end
		end
		
		if (AWAKEN_LAYER==6 or AWAKEN_LAYER==7 or AWAKEN_LAYER	==8 or AWAKEN_LAYER==9) --判断顶层 数组由0开始
		then
			for a=3,1,-1 do --循环滑动3次 保证到达顶端
				slide(604,602,576,238) --滑动
				mSleep(1000)
			end
			mSleep(1000)
			
			if AWAKEN_LAYER==6 then tap(X_AWAKEN_LAYER7,Y_AWAKEN_LAYER7) end
			if AWAKEN_LAYER==7 then tap(X_AWAKEN_LAYER8,Y_AWAKEN_LAYER8) end
			if AWAKEN_LAYER==8 then tap(X_AWAKEN_LAYER9,Y_AWAKEN_LAYER9) end
			if AWAKEN_LAYER==9 then tap(X_AWAKEN_LAYER10,Y_AWAKEN_LAYER10) end
		end 
		--------------战斗部分----------------------------
		
		FIGHT_AWAKEN()
		----------------END--------------------------------
	else	--调回UI
		hideHUD(id)
		main()
	end 
end 