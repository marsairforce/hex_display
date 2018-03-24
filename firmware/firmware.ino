
/**
 * Using an Atmega 164A as a binary to hex display driver.
 * Soldered onto the circuit board with the LED digits.
 * And the need to map the IC pins to an arduino "pin" number
 * I used https://camo.githubusercontent.com/46718caeab6022a330ffed7f27109c147a16ba56/68747470733a2f2f692e696d6775722e636f6d2f735954747555492e6a7067
 * Inputs:
 * | Function | IC | Atmega | Pin | Aruino Pin reference
 * |      /OE |  1 |    PB4 |  44 |   10 |
 * |       A0 |  2 |    PA0 |  37 |   21 |
 * |       A1 |  3 |    PA1 |  36 |   20 |
 * |       A2 |  4 |    PA2 |  35 |   19 |
 * |       A3 |  5 |    PA3 |  34 |   18 |
 * |       A4 |  6 |    PA4 |  33 |   17 |
 * |       A5 |  7 |    PA5 |  32 |   16 |
 * |       A6 |  8 |    PA6 |  31 |   15 |
 * |       A7 |  9 |    PA7 |  30 |   14 |
 * |       A8 | 10 |    PC0 |  19 |   22 |
 * |       A9 | 11 |    PC1 |  20 |   23 |
 * |      A10 | 12 |    PC2 |  21 |   24 |
 * |      A11 | 13 |    PC3 |  22 |   25 |
 * |      A12 | 16 |    PC4 |  23 |   26 |
 * |      A13 | 17 |    PC5 |  24 |   27 |
 * |      A14 | 18 |    PC6 |  25 |   28 |
 * |      A15 | 19 |    PC7 |  26 |   29 |
 * |       NC | 20 |        |     |      |
 * |       NC | 21 |        |     |      |
 * |       NC | 22 |        |     |      |
 * |     DVCC | 23 |        |     |      |
 * |    RESET | 24 |  RESET |   4 |      |
 * |      SCK | 25 |    SCK |   3 |   13 |
 * |     MISO | 26 |   MISO |   2 |   12 |
 * |     MOSI | 27 |   MOSI |   1 |   11 |
 * |      GND | 14 |    GND | 6,18,28,39 |
 * |      VCC | 28 |    VCC | 5,17,27,38 |
 *
 *
 * Connections to LEDs:
 * | Function | Atmega | Pin | Arduino Pin Reference |
 * |       Ca |    PD0 |   9 |   0 |
 * |       Cb |    PD1 |  10 |   1 |
 * |       Cc |    PD2 |  11 |   2 |
 * |       Cd |    PD3 |  12 |   3 |
 * |       Ce |    PD4 |  13 |  30 |
 * |       Cf |    PD5 |  14 |   8 |
 * |       Cg |    PD6 |  15 |   9 |
 * |
 * |      An0 |    PB3 |  43 |   7 |
 * |      An1 |    PB2 |  42 |   6 |
 * |      An2 |    PB1 |  41 |   5 |
 * |      An3 |    PB0 |  40 |   4 |

 * Not connected: 
 * |          |    PD7 |  16 |
 * |          |  XTAL2 |   7 |
 * |          |  XTAL1 |   8 |
 * |          |   AREF |  29 |
 * 
 * Programming: 
 * Use an Arduino UNO, loaded with the "Arduino ISP sketch"
 * Then wire up as
 * | Function | Arduino | ICSP | DISPLAY | 164A |
 * |      VCC |      5V |    2 |      28 |    5 |
 * |     MOSI |      11 |    4 |      27 |    1 |
 * |     MISO |      12 |    1 |      26 |    2 |
 * |      SCK |      13 |    3 |      25 |    3 |
 * |    RESET |      10 |    - |      24 |    4 |
 * |      GND |     GND |    6 |      14 |    6 |
 * 
 
 */

#define PIN_AN0   7
#define PIN_AN1   6
#define PIN_AN2   5
#define PIN_AN3   4

#define PIN_C_A   0
#define PIN_C_B   1
#define PIN_C_C   2
#define PIN_C_D   3
#define PIN_C_E  30 
#define PIN_C_F   8
#define PIN_C_G   9

void setup() {
  pinMode(PIN_AN0, OUTPUT);
  pinMode(PIN_C_A, OUTPUT);

}

void loop() {
  digitalWrite(PIN_AN0, LOW);
  digitalWrite(PIN_C_A, HIGH);
  delay(500);
  digitalWrite(PIN_AN0, HIGH);
  digitalWrite(PIN_C_A, LOW);
  delay(500);
  
}
