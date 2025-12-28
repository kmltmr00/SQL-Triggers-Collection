/*
  Senaryo: Bir ürün silindiðinde (DELETE) çalýþýr.
  Görev: Hangi ID'li ürünün silindiðini raporlar.
  Kullanýlan Tablolar: ITEMS, deleted
*/

CREATE TRIGGER TRG_URUN_SILME 
ON ITEMS 
AFTER DELETE 
AS
BEGIN
    DECLARE @URUN_ID AS INT 
    
    -- Silinen verinin ID bilgisini 'deleted' tablosundan al
    SELECT @URUN_ID = ID FROM deleted
    
    PRINT '[SÝLÝNEN ÜRÜN ID]: ' + CONVERT(VARCHAR(100), @URUN_ID)
END