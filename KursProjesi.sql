CREATE DATABASE etkinlik;

CREATE TABLE aktiviteler(
							sporId INT,
							sporAdi VARCHAR(40),
							sporZamani DATE
						);

INSERT INTO aktiviteler(sporId, sporAdi, sporZamani) VALUES (1,'basketbol','2022-02-05'),(2,'futbol','2022-02-10'),
															(3,'hentbol','2022-02-08'),(4,'tenis','2022-02-06'),
															(5,'yüzme','2022-02-04'),(6,'voleybol','2022-02-12'),
															(7,'badminton','2022-03-05'),(8,'güreş','2022-02-15'),
															(9,'masa tenisi','2022-02-05'),(10,'hokey','2022-03-13'),
															(11,'golf','2022-02-17'),(12,'boks','2022-02-05'),
															(13,'bowling','2022-02-12'),(14,'eskrim','2022-02-10');
SELECT * FROM aktiviteler;
CREATE TABLE ogrenciler(
							sporId INT,
							ogrenciAdi VARCHAR(40),
							ogrenciSoyadi VARCHAR(40),
							ogrenciYas INT
						);

INSERT INTO ogrenciler(sporId, ogrenciAdi, ogrenciSoyadi, ogrenciYas) VALUES (1,'Baran', 'Korkmaz', 24),(3,'Buse', 'Zamanlı', 27),
																		     (1,'Mevlüt', 'Koca', 20),(1,'Burak', 'Ünlü', 17),
																		     (8,'Soner', 'Eskici', 29),(2,'Gökhan', 'Arıkan', 19),
																		     (1,'Derya', 'Üzer', 25),(4,'Pınar', 'Söylemez', 24),
																		     (12,'Ferdi', 'Sonses', 23),(2,'Muharrem', 'Kincihan', 30),
																			 (14,'Peri', 'Tatlıcı', 16),(8,'Ali', 'Eskicioğlu', 22),
																			 (9,'Eylül', 'Baranlı', 12),(6,'Murat', 'Cimri', 26),
																		     (11,'Baran', 'Sonsöz', 26),(14,'Eser', 'Ünlü', 23),
																		     (5,'Esma', 'Yanıltmaz', 20),(13,'Bora', 'Eser', 21),
																		     (6,'Ali', 'Kilimoğlu', 23),(2,'İrem', 'Derin', 20),
																		     (1,'Dursun', 'Hakkıoğlu', 23),(11,'Ebru İrem', 'Genç', 19),
																		     (10,'Ali', 'Hakkıoğlu', 21),(10,'Yaşar', 'Eskimez', 26),
																		     (13,'Müjdat', 'Korkusuz', 27),(1,'Rüzgar', 'Korkmaz', 28),
																			 (11,'Müjgan', 'Aynalı', 26),(11,'Kuzey', 'Bulut', 20),
																		     (5,'Berna', 'Eksiksiz', 20),(3,'Acun', 'Gedik', 29),
																		     (6,'Burak', 'Kocaman', 15),(2,'Adem', 'Uçar', 22),
																		     (1,'Atalay', 'Şirinyurt', 24),(1,'Aleyna', 'Kanatlı', 32),
																		     (5,'Bartın', 'Demirci', 24),(3,'Alara', 'Demir', 21),
																		     (9,'Alperen', 'Cihan', 24),(12,'Poyraz', 'Araz', 27),
																			 (10,'Poyraz', 'Demirci', 24),(6,'Yıldız', 'Köseoğlu', 16),
																		     (9,'Aleyna', 'Öztürk', 24),(8,'Akasya', 'Akgül', 18),
																		     (7,'Açelya', 'Asar', 24),(7,'Adnan', 'Çelik', 18),
																		     (12,'Ahu', 'Dönmez', 24),(10,'Arda', 'Yılmaz', 28),
																		     (10,'Baran', 'Camcı', 24),(9,'Alican', 'Kaya', 27),
																		     (14,'Ata', 'Şirinyurt', 24),(3,'Ahmet', 'Gökçe', 30);

SELECT * FROM ogrenciler;
SELECT * FROM aktiviteler INNER JOIN ogrenciler ON aktiviteler.sporId = ogrenciler.sporId;
--SELECT * FROM aktiviteler FULL JOIN ogrenciler ON aktiviteler.sporId = ogrenciler.sporId;

--METİN BİRLEŞTİRME
SELECT ogrenciAdi + ' ' + ogrenciSoyadi AS adsoyad FROM ogrenciler ORDER BY adsoyad ASC;

UPDATE ogrenciler SET ogrenciAdi= 'Ahmet' WHERE ogrenciAdi= 'Ali' AND ogrenciYas=22;      --Veri güncelleme

--YAŞ ORTALAMASI
	--SELECT AVG(ogrenciYas) FROM ogrenciler;
SELECT ogrenciAdi, ogrenciSoyadi, ogrenciYas FROM ogrenciler WHERE ogrenciYas>(SELECT AVG(ogrenciYas) FROM ogrenciler);
SELECT ogrenciAdi, ogrenciSoyadi, ogrenciYas FROM ogrenciler WHERE ogrenciYas<=(SELECT AVG(ogrenciYas) FROM ogrenciler);
SELECT DISTINCT sporZamani FROM aktiviteler;
--SELECT COUNT(DISTINCT sporZamani) FROM aktiviteler;

SELECT TOP 7 sporAdi, sporZamani FROM aktiviteler;   --TOP Kullanımı



