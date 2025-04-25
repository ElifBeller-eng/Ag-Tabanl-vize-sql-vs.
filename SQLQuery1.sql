CREATE TABLE kullanicilar (
    id INT PRIMARY KEY,
    kullanici_adi VARCHAR(50),
    sifre_hash VARCHAR(100)
);
INSERT INTO kullanicilar (id, kullanici_adi, sifre_hash)
VALUES (1, 'admin', '123456');

SELECT * FROM kullanicilar
WHERE kullanici_adi = 'admin' AND sifre_hash = '' OR 1=1 --';

INSERT INTO kullanicilar (id, kullanici_adi, sifre_hash)
VALUES (2, 'mehmet', CONVERT(VARCHAR(100), HASHBYTES('SHA2_256', 'mehmet123'), 2));

DECLARE @giris_sifre VARCHAR(100)
SET @giris_sifre = CONVERT(VARCHAR(100), HASHBYTES('SHA2_256', 'mehmet123'), 2)

SELECT * FROM kullanicilar
WHERE kullanici_adi = 'mehmet' AND sifre_hash = @giris_sifre;

CREATE LOGIN ogrenci_girisi WITH PASSWORD = 'G123g_45';
CREATE USER ogrenci_kullanici FOR LOGIN ogrenci_girisi;

GRANT SELECT ON kullanicilar TO ogrenci_kullanici;



