-- NanoSoft Framework Alpha for Developers
-- Relesease Date : 29.09.2015
-- #### AP Ayarları Tam eklenmedi !!! /30.09.2015 00:12
-- Compatible with net.Server
-- 7716 (Firmware)

-- AccessPoint Değişkenleri --
var AP_ssid = ""
var AP_pwd = ""
AP_cfg ={}
AP.cfg = 
-------------------------------------------------
-- AP --
var wifi.CreateAP = 

-------------------------------------------------

-- WiFi Ayarları --
var wifi_ssid = "NanoSecure Ar&Ge Lab."
var wifi_password = "|..NanoLab..|"

-------------------------------------------------
-- Framework info log --
framework={}
    framework.version = "ALPHA 1"
    framework.compatible = "net.*, LUA & NodeMCU Firmware Devices"
    framework.users = "For Developers"

-------------------------------------------------


-- Değişkenler --
var server_name = server -- Sunucu Değişkeni
var client_name = client -- İstemci Değişkeni
var net.type = net.TCP -- İstemci Bağlantı Tipi
int net.timeout = 0 -- İstemci Zaman Aşımı
int net.Port = 1905 -- Sunucu Portu
var net.Server = "localhost" -- Sunucu Adresi
var sensor_data = 0 -- Sensör Varsayılan Değer
-------------------------------------------------


-- Client --
var client_name.on = client_name:on
var client_name.send = client_name:send
var client_name.connect = client_name:connect
var client_name.close = client_name:close
var client_name.createConnection = client_name:createConnection
-------------------------------------------------

-- Server --
var server_name.on = server_name:on
var server_name.send = server_name:send
var server_name.listen = server_name:listen
var server_name.close = server_name:close
var server_name.createServer = server_name:createServer
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

    print("Port 1'den küçük 28800 'den büyük olamaz!")
    print("\r\n Şuanki Port :: " + net.Port)

-------------------------------------------------

-- WiFi --

wifi={}
wifi.ssid = wifi_ssid
wifi.pwd = wifi_password

wifi.ap.config(wifi)
-------------------------------------------------

