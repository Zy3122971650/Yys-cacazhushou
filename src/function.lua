function tap(x,y) 				-- 点击函数
	width,height = getScreenSize()
	local id1 = createHUD()---创建HUD用于显示点击位置圆点
	local s = height * 0.018 --用于按屏幕大小缩放显示圆点大小
	showHUD(id1,"",1,"0xffff0000","d.png",0,x-s,y-s,s*2,s*2)---d.png为圆点图片，可以用PS做一个
	touchDown(1, x, y)
	mSleep(50)
	touchUp(1,x,y)
	mSleep(100)
	hideHUD(id1)
	mSleep(100)
end

function slide(x1,x2,y1,y2)		 --滑动函数
	touchDown (0,x1,y1)
	mSleep (50)
	touchMove(0,x2,y2)
	mSleep(50)
	touchUp(0,x2,y2)
end

function View()
	x, y = findColor({0, 814, 140, 921}, 
		"0|0|0xd6af67,16|-24|0xe5c48a,-8|-29|0x9b938b,26|7|0x3a2919",
		95, 0, 0, 0)--纠正视野
	if x > -1 then
		tap (x,y)
		mSleep(300)
	end
end

function VictoryOrLose_Judge()
	   x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)--胜利
	if x > -1 then
		VictoryOrLose_EQUIP ()
	else 
		x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0)--失败
		if x > -1 then
			VictoryOrLose_EQUIP()
		end
	end 	
	
end

function Find_Chounv()
	while (true) do 
		View()
		VictoryOrLose_Judge()
		if Chounv == 0   and Chounv_init==0          --发现丑女
		then 
			x, y = findColorInRegionFuzzy(0x2b2b2b, 100, 843, 342, 1015, 484, 0, 0)
			if x > -1 then
				for a=3,1,-1 do 
					tap (1394,298) --点击右边怪
				end
				Chounv_init=1 
				break
			end
		else
			break
		end
	end					
	
end 	

function Find_AWAKEN ()
	x, y = findColorInRegionFuzzy(0xada696, 100, 418, 642, 501, 664, 0, 0)
	if x > -1 then
		WHERE()
	end
end

function Find_Big_Snake()
	x, y = findColor({416, 647, 493, 663}, 
		{
			{x=0,y=0,color=0x4c0a0a},
			{x=-23,y=-1,color=0x46322a},
			{x=-31,y=0,color=0x4f0d0d}
		},
		100, 0, 0, 0)
	if x > -1 then
		WHERE()
		equip()
	end -- 人工纠错后 在大蛇界面
end 

function VictoryOrLose_EQUIP ()
	while (true) do --判断胜利 & 失败
		toast("判断胜利ing")
		Find_Big_Snake()
		View()
		x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)--胜利
		if x > -1 then
			--[[结束这一局 Began ]]--
			tap (261,697)
			for k=4 ,1,-1 do 
				tap (261,697)
				mSleep(1000)  --[[结束这一局 	End ]]--
				
			end 
			TEAM ()
			toast("判断胜利结束")
			Victory=Victory+1
			break
			
		else 
			
			x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0) --失败
			if x > -1 then			--[[结束这一局 Began ]]--
				tap (261,697)
				for k=3 ,1,-1 do 
					tap (261,697)
					mSleep(1000)	--[[结束这一局 	End ]]--
				end 
				toast("判断胜利结束")
				Lose=Lose+1
				i=999
				WHERE()
				equip()
				break
			end
			
		end
	end
	
end
function VictoryOrLose_AWAKEN ()
	while (true) do --判断胜利 & 失败
		Find_AWAKEN ()
		View()
		x, y = findColorInRegionFuzzy(0x7c1a13, 100, 618, 220, 843, 343, 0, 0)--胜利
		if x > -1 then
			--[[结束这一局 Began ]]--
			tap (261,697)
			for k=4 ,1,-1 do 
				tap (261,697)
				mSleep(1000)  --[[结束这一局 	End ]]--
				
			end 
			TEAM ()
			Victory=Victory+1
			break
			
		else 
			Find_AWAKEN ()
			x, y = findColorInRegionFuzzy(0x4f4758, 100, 618, 220, 843, 343, 0, 0) --失败
			if x > -1 then			--[[结束这一局 Began ]]--
				tap (261,697)
				for k=3 ,1,-1 do 
					tap (261,697)
					mSleep(1000)	--[[结束这一局 	End ]]--
				end 
				Lose=Lose+1
				break
			end
			
		end
	end
end
function TEAM ()
	
	while (true) do
		
		if EQUIP_TEAM==0 or AWAKEN_TEAM==0  --组队功能开启 成功邀请后不再判断
		then 
			if EQUIP_TEAM_JOIN==0 or AWAKEN_TEAM_JOIN==0  and Time==0  --房主
			then
				mSleep (3000)
				tap(837,546) -- 勾选框
				tap(1047,652) -- 确定
				for a=1,2 do
					tap(269,610) --退出页面
				end 
				Time=1
				break
			elseif  EQUIP_TEAM_JOIN==1 or AWAKEN_TEAM_JOIN==1  and Time==0 --加入
			then
				Time=1
				break
			elseif EQUIP_TEAM_JOIN==0 or AWAKEN_TEAM_JOIN==0  and Time==2
			then 
				break
			elseif  EQUIP_TEAM_JOIN==1 or AWAKEN_TEAM_JOIN==1  and Time==2
			then
				break
			end
		else
			break
			
		end	
		
	end
	
end 	