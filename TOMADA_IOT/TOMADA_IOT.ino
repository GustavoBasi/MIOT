/*
NOMES: 
GUSTAVO EDUARDO BASI DA CRUZ 
GUSTAVO FAZOLIM 
GUSTAVO LUZ BARROS 
IGOR DANIEL MAMANI JIMENEZ 
KAIKE SOUZA SILVA 
LEONARDO DE CARVALHO SANTOS 
LUIZ FELIPE CANDIDO 
CURSO: 1ADSC
*/

#include "DHT.h"
#define dht_type DHT11

const int maxVal = 70;
int dht_pin = A0;
DHT dht_1 = DHT(dht_pin, dht_type);

int pinoSensor = A1;
int valorLido = 0;          // Varivel auxiliar.
float temperaturaBase = 0;  // Variavel que armanezenará a temperatura lida.
float tomadaEmEstadoDePerigo = 0;


void setup() {         // Função que será executada uma
  Serial.begin(9600);  //Inicia a comunicação serial a 9600 bauds.
  dht_1.begin();
}

void loop() {  // Função que será executada continuamente.

  float umidade = dht_1.readHumidity();
  valorLido = analogRead(pinoSensor);       // Leitura analogica da porta A0
  temperaturaBase = (valorLido * 0.00488);  // 5VOLTS / 1023 = 0,0048 precisão do A/D

  temperaturaBase = temperaturaBase * 100 * 2;  // converte milivolts para celsius - cada 10vM == 1 grau Celsius

  float TempTomadaNormal = temperaturaBase;
  float umidaTomadaNormal = umidade;
  float TempTomadaAquecida = temperaturaBase * 1.2;
  float umidadeTomadaUmida = umidade * 1.2;

  Serial.print("Max:");
  Serial.print(maxVal);
  Serial.print(",");
  Serial.print("Umidade_Comum:");
  Serial.print(umidaTomadaNormal);
  Serial.print(",");
  Serial.print("Temperatura_Comum:");
  Serial.print(TempTomadaNormal);
  Serial.print(",");
  Serial.print("Temperatura_Elevada:");
  Serial.print(TempTomadaAquecida);
  Serial.print(",");
  Serial.print("Umidade_Elevada:");
  Serial.println(umidadeTomadaUmida);
  delay(1000);
}