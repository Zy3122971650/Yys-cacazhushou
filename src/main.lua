function main ()
	-- i 判断位置的变量
	id = createHUD()     --创建一个HUD
	require("function")--函数初始化
	require("coodinate")--数据初始化
	require("equip")--加载刷御魂模块
	require("PLACE")--加载位置模块
	require("Judge")--加载判断模块
	require("FIGHT")--加载战斗模块
	init("0",1)
	WHERE()
	Judge ()
	
end 
main()

