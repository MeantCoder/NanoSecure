-- NanoSoft 3. Nesil Sabit Çekirdek // İstemci --
var DeviceID = "AR&GE"
var client_name = client -- İstemci Değişkeni
var net.type(net.TCP) -- İstemci Bağlantı Tipi
int net.timeout(0) -- İstemci Zaman Aşımı
int net.Port(1905) -- Sunucu Portu
var net.Server("localhost") -- Sunucu Adresi
var sensor_data


-- Sensör Ayarları --
gpio.mode(4, INPUT)
sensor_data = gpio.read(4)

client = net.createConnection(net.type, net.timeout) -- İstemci Bağlantı Ayarları

-- Log Data --
-- Sunucu Logları için veriler --
log={}
 log.DeviceID = DeviceID() -- Cihaz Kimliği
 log.ChipID = node.chipid() -- ESP12 ID
 log.DeviceIP = wifi.sta.getip() -- Cihaz'ın ağ içerisindeki IP adresi
 log.DeviceMAC = wifi.sta.getmac() -- Cihaz'ın MAC adresi

-- Main --
    client_name:connect(net.Port, net.Server)

    client_name:on("receive", function(client_name, data)
        if (data == "get.info(log)") then
            client_name:send(log)
        elseif (data == "Verification OK") then
            client_name:send("Server & Client Connected \r\n NanoSoft TCP Bilgi Merkezine Hoşgeldiniz")
        elseif (data == "close" or "quit" or "exit") then
            client_name:send("Good bye, Have a nice day.")
        else
            print(data)
    end)


    while (sensor_data > 0) do
        client_name:send("DeviceID  : " + DeviceID + "CO Gazı algılandı Şuanki değer : " + co + "\r\n" + log)
        -- Karbonmonoksit değeri 0'ın üzerinde ise sunucuya sinyal yollar (LOG Kaydı eklendi)
    end
