----检测是否在阴阳师中 若在，取ID，后面重启用---------
AppID = frontAppName() 
if AppID=="#阴阳师1"
then 
	toast("阴阳师已启动")

elseif AppID=="#阴阳师2"
then
	toast("")
else  toast("未启动")

end
-----------------------------------------------------