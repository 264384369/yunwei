@rem #forfiles /p %~dp0 /s /m *.* /d -7 /c "cmd /c del @path" 
@rem #ɾ����ǰĿ¼7��ǰ�ļ�
forfiles /p E:\db_backup /s /m *.* /d -14 /c "cmd /c del @path" >>E:\db_backup\dellog.txt
@rem #ɾ��ָ��Ŀ¼14��ǰ�ļ�
