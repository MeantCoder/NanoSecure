-- NanoSoft Framework Alpha for Developers
-- Relesease Date : 29.09.2015
-- Compatible with net.Server
-- 7716 (Firmware)
framework={}
    framework.version = "ALPHA 1"
    framework.compatible = "net.Server, LUA & NodeMCU Firmware Devices"
    framework.users = "For Developers"
<<<<<<< HEAD

-------------------------------------------------

var server_name = server -- Sunucu De�i�keni
var client_name = client -- �stemci De�i�keni
var net.type = net.TCP -- �stemci Ba�lant� Tipi
int net.timeout = 0 -- �stemci Zaman A��m�
int net.Port = 1905 -- Sunucu Portu
var net.Server = "localhost" -- Sunucu Adresi
var sensor_data = 0 -- Sens�r Varsay�lan De�er
=======
    
-------------------------------------------------

var server_name = server -- Sunucu Değişkeni
var client_name = client -- İstemci Değişkeni
var net.type = net.TCP -- İstemci Bağlantı Tipi
int net.timeout = 0 -- İstemci Zaman Aşımı
int net.Port = 1905 -- Sunucu Portu
var net.Server = "localhost" -- Sunucu Adresi
var sensor_data = 0 -- Sensör Varsayılan Değer
>>>>>>> 85da132016d65bfcb51d1824aaf543279d9986be


-- Client --
var client_name.on = client_name:on
var client_name.send = client_name:send
var client_name.connect = client_name:connect
var client_name.createConnection = client_name:createConnection
-------------------------------------------------

-- Server --
var server_name.on = server_name:on
var server_name.send = server_name.send
var server_name.listen = server_name:listen
var server_name.close = server_name.close
var server_name.createServer = server_name.createServer
-------------------------------------------------

-- Framework bilgisi --
if(server_name.send = "get.fw()" or client_name.send = "get.fw()")
    print(framework)
-------------------------------------------------

-- I/O --
-- gpio.OUTPUT, gpio.INPUT, gpio.INT, gpio.HIGH, gpio.LOW
var io.OUT = gpio.OUTPUT
var io.IN = gpio.INPUT
var io.INTR = gpio.INT -- Interrupt Mode
var io.HIGH = gpio.HIGH
var io.LOW = gpio.LOW
var io.read = gpio.read
var io.mode = gpio.mode
var io.write = gpio.write
var io.trig = gpio.trig
-------------------------------------------------

-- Port Check --
if ((net.Port > 28800) or (net.Port < 1))
    server_name.close
    client_name.close
<<<<<<< HEAD
    print("Port 1'den k���k 28800 'den b�y�k olamaz!")
    print("\r\n �uanki Port :: " + net.Port)

-------------------------------------------------
=======
    print("Port 1'den küçük 28800 'den büyük olamaz!")
    print("\r\n Şuanki Port :: " + net.Port)

-------------------------------------------------
>>>>>>> 85da132016d65bfcb51d1824aaf543279d9986be
