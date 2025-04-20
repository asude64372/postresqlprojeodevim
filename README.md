# Çevrimiçi Eğitim Platformu - PostgreSQL Veritabanı Tasarımı

Bu proje, PostgreSQL kullanılarak geliştirilmiş bir çevrimiçi eğitim platformu için temel veritabanı şemasını içermektedir. Sistem; kullanıcı kayıtları, eğitim katılımı, sertifika takibi ve blog paylaşımlarını kapsayan bir yapıya sahiptir.

## Proje Amacı

Günümüzde uzaktan eğitim platformları, kullanıcı etkileşimi ve içerik yönetimi açısından karmaşık veritabanı yapıları gerektirmektedir. Bu proje, bu ihtiyaca cevap verecek şekilde aşağıdaki işlevleri kapsayan bir veritabanı modeli sunar:

- Üyelik sistemi
- Eğitim yönetimi
- Eğitim-kategori bağlantısı
- Katılım takibi
- Sertifika üretimi ve atamaları
- Kullanıcı blog sistemi

## Tablolar ve Açıklamaları

| Tablo | Açıklama |
|-------|----------|
| **Members** | Platforma kayıt olan üyelerin bilgilerini içerir. |
| **Courses** | Eğitim içerikleri, açıklamaları ve tarih bilgilerini tutar. |
| **Categories** | Eğitimlerin ait olduğu kategoriler. |
| **Enrollments** | Hangi üyenin hangi eğitime katıldığını gösterir. |
| **Certificates** | Eğitimlere ait verilebilecek sertifikaları içerir. |
| **CertificateAssignments** | Sertifikaların hangi kullanıcıya atandığını takip eder. |
| **BlogPosts** | Üyelerin yazdığı blog içerikleri burada saklanır. |

## 🔧 Kullanılan Veri Tipleri ve Kısıtlamalar

- `VARCHAR`, `TEXT`, `DATE`, `TIMESTAMP` gibi temel PostgreSQL veri tipleri kullanılmıştır.
- Her tabloda birincil anahtarlar (PRIMARY KEY) tanımlanmıştır.
- Tablolar arası ilişkiler yabancı anahtarlar (FOREIGN KEY) ile sağlanmıştır.
- Gerekli alanlarda `UNIQUE` ve `NOT NULL` kısıtlamaları kullanılmıştır.

## Kullanım Talimatı

1. PostgreSQL destekli bir veritabanı yöneticisi (örneğin PgAdmin4) üzerinden yeni bir veritabanı oluşturun.
2. `veritabani.sql` dosyasındaki kodları ilgili alana yapıştırıp çalıştırın.
3. Tüm tablolar oluşturulacak ve ilişkiler tanımlanmış olacaktır.

## ER Diyagramı

Şema diyagramı dosyası en kısa sürede bu repo içinde `schema.png` olarak paylaşılacaktır.

---

Teşekkürler 🙌
