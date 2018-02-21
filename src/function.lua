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
function UIName(name)
	local bb = require("badboy")
	local json = bb.getJSON()content = getUIContent(name)   --获得文件ui.json的内容
	lua_value = json.decode(content)   --对获取到的json字符串解码
	showUI(json.encode(lua_value))
end