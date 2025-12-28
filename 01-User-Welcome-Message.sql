/*
  Senaryo: Sisteme yeni biri eklendiðinde (INSERT) çalýþýr.
  Görev: Kullanýcýya "Aramýza Hoþgeldin" mesajý verir.
  Kullanýlan Tablolar: USERS, inserted
*/

CREATE TRIGGER TRG_KULLANICI_MESAJI
ON USERS 
AFTER INSERT
AS 
BEGIN
    DECLARE @NAMESURNAME AS VARCHAR(100)
    
    -- Yeni eklenen ismi 'inserted' sanal tablosundan al
    SELECT @NAMESURNAME = NAMESURNAME FROM inserted
    
    PRINT 'ARAMIZA HOÞGELDÝN ' + @NAMESURNAME
END