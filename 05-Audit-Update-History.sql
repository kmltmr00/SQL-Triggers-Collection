/*
  Senaryo: Kullanýcý bilgisi güncellendiðinde (UPDATE) çalýþýr.
  Görev: Deðiþiklik öncesi (Old Value) ve sonrasý (New Value) veriyi gösterir.
  Kullanýlan Tablolar: inserted (Yeni), deleted (Eski)
*/

CREATE TRIGGER TRG_ISIM_DEGISTIRME
ON USERS
AFTER UPDATE 
AS 
BEGIN 
    DECLARE @ESKI_AD AS VARCHAR(100)
    DECLARE @YENI_AD AS VARCHAR(100)
    
    -- Eski veriyi 'deleted' tablosundan al
    SELECT @ESKI_AD = NAMESURNAME FROM deleted
    
    -- Yeni veriyi 'inserted' tablosundan al
    SELECT @YENI_AD = NAMESURNAME FROM inserted
    
    PRINT 'DEÐÝÞÝKLÝK RAPORU -> Eski Ad: ' + @ESKI_AD + ' | Yeni Ad: ' + @YENI_AD
END