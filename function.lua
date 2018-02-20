function tap(x,y) 				-- 点击函数
	touchDown (0,x,y)
	mSleep(200)
	touchUp(0,x,y)
end
function slide(x1,x2,y1,y2)		 --滑动函数
	touchDown (0,x1,y1)
	mSleep (50)
	touchMove(0,x2,y2)
	mSleep(50)
	touchUp(0,x2,y2)
end
function UIName(name)
	local bb = require("badboy")
	local json = bb.getJSON()content = getUIContent(name)   --获得文件ui.json的内容
	lua_value = json.decode(content)   --对获取到的json字符串解码
	showUI(json.encode(lua_value))
end