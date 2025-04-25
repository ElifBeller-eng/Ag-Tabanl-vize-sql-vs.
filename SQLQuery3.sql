BACKUP DATABASE okul
TO DISK = 'C:\yedekler\okul_tamyedek.bak'
WITH FORMAT, NAME = 'Tam Yedek';


BACKUP DATABASE localhouse
TO DISK = 'C:\yedekler\localhouse_tamyedek.bak'
WITH FORMAT, NAME = 'Tam Yedek';

--do�rusu
BACKUP DATABASE localhouse
TO DISK = N'C:\Yedekler\localhouse_FULL.bak'
WITH INIT, STATS = 10;

RESTORE DATABASE localhouse_restore
FROM DISK = N'C:\Yedekler\localhouse_FULL.bak'
WITH MOVE 'localhouse' TO 'C:\Yedekler\localhouse_restore.mdf',
     MOVE 'localhouse_log' TO 'C:\Yedekler\localhouse_restore_log.ldf',
     REPLACE;