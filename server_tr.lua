-- 1. Nesil Çekirdek
-- #== DEMO PROGRAM ==#
--Sunucu Bağlantısı için Gerekli Ayarları Yapıyoruz 60s zaman aşımı
server = net.createServer(net.TCP, 60) 

--Sunucuyu aktif iken Gelen Veri'leri Yazdırıyoruz
	server:on("receive", function(server, data)
		if data == "Merhaba Server" then
			server:send("Merhaba Client")
		elseif data == "Doğrulama [OK]" then
			server:send("Server & Client Bağlantısı Aktif \r\n NanoSoft TCP Bilgi Merkezine Hoşgeldiniz")
		elseif data == "close || quit || exit || çıkış" then
			server:send("Güle Güle, İyi Günler.")
		else
			print(data)
	end
	)

--Sunucuyu Dinlemesi Başlatıyoruz PORT = 1905
server:listen(1905)

--26.9.21015 NanoSoft 1. DEMO - B. Uğur Demirkan  => meantcoder@gmail.com