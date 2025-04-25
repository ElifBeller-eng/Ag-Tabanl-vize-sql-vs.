[# 📊 Ağ Tabanlı Vize SQL Projesi

Bu proje, Ankara Üniversitesi Bilgisayar Mühendisliği bölümünde verilen **BLM4522 - Ağ Tabanlı Paralel Dağılım Sistemleri** dersi kapsamında hazırlanmıştır. Proje, veritabanı sistemlerinin güvenliği, veri temizleme ve yedekleme konularında uygulamalı örnekler içermektedir.

## 📌 Proje Kapsamı

Projede aşağıdaki üç ana başlık ele alınmıştır:

### 1. 🔐 Veritabanı Güvenliği ve Erişim Kontrolü
- SQL Injection saldırılarına karşı önlemler
- Rol tabanlı kullanıcı yetkilendirme (GRANT, REVOKE)
- HASHBYTES kullanılarak şifrelerin SHA-256 ile saklanması
- SQL Server Audit özelliğiyle işlem loglama ve izleme

### 2. 🧹 Veri Temizleme ve ETL Süreçleri
- Eksik veya hatalı verilerin tespiti ve filtrelenmesi
- Geçersiz tarih, telefon ve isim verilerinin temizlenmesi
- ETL (Extract, Transform, Load) işlemlerinin SQL ile uygulanması

### 3. 💾 Veritabanı Yedekleme ve Otomasyon
- FULL, DIFFERENTIAL ve TRANSACTION LOG yedekleme yöntemleri
- SQL Server Agent ile zamanlanmış yedekleme işleri
- SQL Express kullanıcıları için Task Scheduler +  dosyası ile otomasyon

## 🛠 Kullanılan Teknolojiler
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Task Scheduler (Windows)
- ,  ve  dosyaları

## 🚀 Kurulum ve Kullanım
1.  dosyalarını SSMS ile açarak veritabanınızı oluşturun.
2. Kodları adım adım çalıştırarak senaryoları test edin.
3. Otomatik yedekleme için  ya da SQL Server Agent kullanın.
4.  ve  gibi dosyaları klasöre ekleyip zamanlayıcıyla eşleyin.

## 🧪 Test Senaryoları
- Yetkisiz kullanıcı erişimi test edildi
- Hatalı veri seti üzerinden ETL süreci uygulandı
- Otomatik yedekleme başarıyla zamanlandı ve geri yükleme (restore) test edildi

## 📁 Dosya Yapısı (örnek)
