CREATE PROCEDURE FIRMAHAREKETLER
AS
SELECT TBLFIRMAHAREKETLER.ID AS 'KIMLIK', URUNAD AS 'URUN ADI', TBLFIRMAHAREKETLER.ADET, (TBLPERSONELLER.AD +' '+SOYAD) AS 'PERSONEL', TBLFIRMALAR.AD AS 'FIRMA',
FIYAT, TOPLAM AS 'TOPLAM FIYAT',(SERI+' '+SIRANO) AS 'FATURA', TBLFIRMAHAREKETLER.TARIH, NOTLAR
FROM TBLFIRMAHAREKETLER 

inner join TBLURUNLER
ON
TBLFIRMAHAREKETLER.URUNID=TBLURUNLER.ID

inner join TBLPERSONELLER
ON
TBLFIRMAHAREKETLER.PERSONEL=TBLPERSONELLER.ID

inner join TBLFIRMALAR
ON
TBLFIRMAHAREKETLER.FIRMA=TBLFIRMALAR.ID

inner join TBLFATURABILGI
ON
TBLFIRMAHAREKETLER.FATURAID=TBLFATURABILGI.FATURABILGIID
