@rem #forfiles /p %~dp0 /s /m *.* /d -7 /c "cmd /c del @path" 
@rem #删除当前目录7天前文件
forfiles /p E:\db_backup /s /m *.* /d -14 /c "cmd /c del @path" >>E:\db_backup\dellog.txt
@rem #删除指定目录14天前文件
