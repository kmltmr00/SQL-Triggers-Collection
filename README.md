# SQL-Triggers-Collection
# 🛡️ SQL Database Triggers Collection

Bu repository, veri bütünlüğünü (Data Integrity) ve güvenliği sağlamak amacıyla **T-SQL** kullanılarak yazılmış gelişmiş **Trigger** senaryolarını içerir.

## 🚀 Proje İçeriği

Bu koleksiyonda aşağıdaki senaryolar kodlanmıştır:

1.  **Automation:** Yeni kayıtlarda otomatik aksiyonlar (Hoşgeldin mesajı vb.).
2.  **Logging:** Silinen verilerin takibi ve loglanması (`deleted` tablosu kullanımı).
3.  **Data Validation:** Hatalı veri girişlerinin (Örn: Negatif Fiyat) veritabanı seviyesinde engellenmesi (`ROLLBACK TRANSACTION`).
4.  **Security:** Kritik verilerin (Admin hesabı gibi) silinmeye karşı korunması.
5.  **Audit Trails:** Güncelleme işlemlerinde Eski ve Yeni verinin karşılaştırılması (`inserted` vs `deleted`).

## 🛠️ Teknolojiler
* MS SQL Server
* T-SQL (Transact-SQL)
