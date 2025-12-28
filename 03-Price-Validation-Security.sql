/*
  Senaryo: Ürün eklenirken (INSERT) fiyat kontrolü yapar.
  Görev: Eðer fiyat 0'dan küçükse iþlemi iptal eder (ROLLBACK).
  Kullanýlan Komutlar: IF, ROLLBACK TRANSACTION
*/

CREATE TRIGGER TRG_URUN_EKLEME
ON ITEMS
AFTER INSERT 
AS 
BEGIN
    DECLARE @UNITPRICE AS FLOAT 
    
    SELECT @UNITPRICE = UNITPRICE FROM inserted
    
    -- Negatif fiyat kontrolü
    IF @UNITPRICE < 0
    BEGIN
        ROLLBACK TRANSACTION
        PRINT 'HATA: NEGATÝF FÝYAT GÝRÝÞÝ YAPILAMAZ!'
    END
END