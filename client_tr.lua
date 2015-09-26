-- #== DEMO PROGRAM ==#
--Sunucuya Bağlantı Kuruyoruz
client = net.createConnection(net.TCP, 0)

--Sunucudan Gelen Veri'leri Yazdırıyoruz
	client:on("receive", function(client, data)
			if data == "Merhaba Client" then
				client:send("Doğrulama [OK]")
			elseif data == "Server & Client Bağlantısı Aktif \r\n NanoSoft TCP Bilgi Merkezine Hoşgeldiniz" then
				client:send("Güle Güle, İyi Günler.")
				client:close()
		end
	)
	
--Sunucuya Bağlantı Ayarlarını Yapıyoruz : PORT = [1905] , SERVER = [localhost]
client:connect(1905, "localhost")

--Sunucuya Merhaba Metni Yolluyoruz
client:send("Merhaba Server")

--26.9.21015 NanoSoft 1. DEMO - B. Uğur Demirkan  => meantcoder@gmail.com