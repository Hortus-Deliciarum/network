#include <ArduinoOSCWiFi.h>
// this is also valid for other platforms which can use only WiFi
// #include <ArduinoOSC.h>

// WiFi stuff
const char* ssid = "HORTUS";
const char* pwd = "francesco";
const IPAddress ip(192, 168, 0, 100);
const IPAddress gateway(192, 168, 0, 1);
const IPAddress subnet(255, 255, 255, 0);

const char* host = "192.168.0.10";
const int send_port = 55555;

void setup() {
  Serial.begin(115200);
  delay(2000);
#ifdef ESP_PLATFORM
  WiFi.disconnect(true, true);  // disable wifi, erase ap info
  delay(1000);
  WiFi.mode(WIFI_STA);
#endif
    WiFi.begin(ssid, pwd);
    WiFi.config(ip, gateway, subnet);
    while (WiFi.status() != WL_CONNECTED) {
        Serial.print(".");
        delay(500);
    }
    Serial.print("WiFi connected, IP = ");
    Serial.println(WiFi.localIP());

    //OscWiFi.publish(host, send_port, "/publish", 1)
    //    ->setIntervalMsec(250.f);
}

void loop() {
  //OscWiFi.update();
  int token = random(0,100);
  
  OscWiFi.send(host, send_port, "/reply", token);
  delay(2000);
}
