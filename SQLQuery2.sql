CREATE TABLE ogrenciler (
    id INT,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    dogum_tarihi VARCHAR(50),
    telefon VARCHAR(20)
);
SELECT * FROM ogrenciler WHERE ad IS NULL OR soyad IS NULL;
SELECT * FROM ogrenciler WHERE LEN(telefon) < 10;
SELECT * FROM ogrenciler WHERE ISDATE(dogum_tarihi) = 0;


DROP TABLE temiz_ogrenciler;

CREATE TABLE temiz_ogrenciler (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    dogum_tarihi VARCHAR(50) NOT NULL,
    telefon VARCHAR(20) NOT NULL
);
CREATE TABLE temiz_ogrenciler_yeni (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    dogum_tarihi VARCHAR(50) NOT NULL,
    telefon VARCHAR(20) NOT NULL
);

INSERT INTO temiz_ogrenciler (ad, soyad, dogum_tarihi, telefon)
SELECT 
    ad, 
    soyad, 
    CAST(dogum_tarihi AS DATE), 
    telefon 
FROM ogrenciler
WHERE ad IS NOT NULL AND soyad IS NOT NULL
  AND LEN(telefon) >= 10
  AND ISDATE(dogum_tarihi) = 1;

INSERT INTO ogrenciler (id, ad, soyad, dogum_tarihi, telefon) VALUES
(1, 'Ayþe', NULL, '2001-05-10', '507123456'),
(2, NULL, 'Demir', '2001-14-01', '0531abc456'),
(3, 'Mert', 'Can', '2000-10-20', '05311234567');

INSERT INTO temiz_ogrenciler (ad, soyad, dogum_tarihi, telefon)
SELECT 
    ad,
    soyad,
    CAST(dogum_tarihi AS DATE),
    telefon
FROM ogrenciler
WHERE ad IS NOT NULL AND soyad IS NOT NULL
  AND LEN(telefon) >= 10
  AND ISDATE(dogum_tarihi) = 1;