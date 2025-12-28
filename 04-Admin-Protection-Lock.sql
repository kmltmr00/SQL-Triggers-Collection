/*
  Senaryo: Kullanýcý silme (DELETE) iþlemi sýrasýnda devreye girer.
  Görev: ID'si 1 olan (Admin/Patron) kullanýcýnýn silinmesini engeller.
  Kritik Seviye: Yüksek
*/

CREATE TRIGGER TRG_KULLANICI_SILME 
ON USERS
AFTER DELETE 
AS 
BEGIN 
    DECLARE @USER_ID AS INT 
    
    SELECT @USER_ID = ID FROM deleted
    
    -- Eðer silinmeye çalýþýlan ID 1 ise iþlemi durdur
    IF @USER_ID = 1
    BEGIN
        ROLLBACK TRANSACTION 
        PRINT 'ÝZÝNSÝZ ÝÞLEM: PATRONU SÝLEMEZSÝNÝZ!'
    END
END