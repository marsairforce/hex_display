
/**
 * Using an Atmega 164A as a binary to hex display driver.
 * Soldered onto the circuit board with the LED digits.
 * And the need to map the IC pins to an arduino "pin" number
 * I used https://camo.githubusercontent.com/46718caeab6022a330ffed7f27109c147a16ba56/68747470733a2f2f692e696d6775722e636f6d2f735954747555492e6a7067
 * Inputs:
 * | Function | IC | Atmega | Pin | Aruino Pin reference
 * |      /OE |  1 |    PB4 |  44 |    4 |
 * |       A0 |  2 |    PA0 |  37 |   24 |
 * |       A1 |  3 |    PA1 |  36 |   25 |
 * |       A2 |  4 |    PA2 |  35 |   26 |
 * |       A3 |  5 |    PA3 |  34 |   27 |
 * |       A4 |  6 |    PA4 |  33 |   28 |
 * |       A5 |  7 |    PA5 |  32 |   29 |
 * |       A6 |  8 |    PA6 |  31 |   30 |
 * |       A7 |  9 |    PA7 |  30 |   31 |
 * |       A8 | 10 |    PC0 |  19 |   16 |
 * |       A9 | 11 |    PC1 |  20 |   17 |
 * |      A10 | 12 |    PC2 |  21 |   18 |
 * |      A11 | 13 |    PC3 |  22 |   19 |
 * |      A12 | 16 |    PC4 |  23 |   20 |
 * |      A13 | 17 |    PC5 |  24 |   21 |
 * |      A14 | 18 |    PC6 |  25 |   22 |
 * |      A15 | 19 |    PC7 |  26 |   23 |
 * |       LE | 15 |    PD7 |  16 |   15 |
 * |       NC | 20 |        |     |      |
 * |       NC | 21 |        |     |      |
 * |       NC | 22 |        |     |      |
 * |     DVCC | 23 |        |     |      |
 * |    RESET | 24 |  RESET |   4 |      |
 * |      SCK | 25 |    SCK |   3 |    7 |
 * |     MISO | 26 |   MISO |   2 |    6 |
 * |     MOSI | 27 |   MOSI |   1 |    5 |
 * |      GND | 14 |    GND | 6,18,28,39 |
 * |      VCC | 28 |    VCC | 5,17,27,38 |
 *
 *
 * Connections to LEDs:
 * | Function | Atmega | Pin | Arduino Pin Reference |
 * |       Ca |    PD0 |   9 |   8 |
 * |       Cb |    PD1 |  10 |   9 |
 * |       Cc |    PD2 |  11 |  10 |
 * |       Cd |    PD3 |  12 |  11 |
 * |       Ce |    PD4 |  13 |  12 |
 * |       Cf |    PD5 |  14 |  13 |
 * |       Cg |    PD6 |  15 |  14 |
 * |
 * |      An0 |    PB3 |  43 |   3 |
 * |      An1 |    PB2 |  42 |   2 |
 * |      An2 |    PB1 |  41 |   1 |
 * |      An3 |    PB0 |  40 |   0 |

 * Not connected: 
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
 * |    RESET |      10 |    5 |      24 |    4 |
 * |      GND |     GND |    6 |      14 |    6 |
 * 
 
 */

#define PIN_AN0   3
#define PIN_AN1   2
#define PIN_AN2   1
#define PIN_AN3   0

#define PIN_MOSI  5
#define PIN_MISO  6
#define  PIN_SCK   7

#define PIN_CA    8
#define PIN_CB    9
#define PIN_CC    10
#define PIN_CD    11
#define PIN_CE    12 
#define PIN_CF    13
#define PIN_CG    14

#define PIN_LE    15
#define PIN_OE    4

#define PIN_A0    24
#define PIN_A1    25
#define PIN_A2    26
#define PIN_A3    27
#define PIN_A4    28
#define PIN_A5    29
#define PIN_A6    30
#define PIN_A7    31
#define PIN_A8    16
#define PIN_A9    17
#define PIN_A10   18
#define PIN_A11   19
#define PIN_A12   20
#define PIN_A13   21
#define PIN_A14   22
#define PIN_A15   23


// bit matrix for active low cathodes to display 0..F
// where this is really just port D, segment a is LSB, segment g is bit 0x40 (mask is 0x7F)
// 0  100 0000    0x40
// 1  111 1001    0x79
// 2  010 0100    0x24
// 3  011 0000    0x30
// 4  001 1001    0x19
// 5  001 0010    0x12
// 6  000 0010    0x02
// 7  111 1000    0x78
// 8  000 0000    0x00
// 9  001 1000    0x18
// A  000 1000    0x08
// b  000 0011    0x03
// C  100 0110    0x46
// d  010 0001    0x21
// E  000 0110    0x06
// F  000 1110    0x0E

const char digits[16] = { 0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x18, 0x08, 0x03, 0x46, 0x21, 0x06, 0x0E };

void setup() {
  pinMode(PIN_AN0, OUTPUT);
  pinMode(PIN_AN1, OUTPUT);
  pinMode(PIN_AN2, OUTPUT);
  pinMode(PIN_AN3, OUTPUT);
  
  pinMode(PIN_CA, OUTPUT);
  pinMode(PIN_CB, OUTPUT);
  pinMode(PIN_CC, OUTPUT);
  pinMode(PIN_CD, OUTPUT);
  pinMode(PIN_CE, OUTPUT);
  pinMode(PIN_CF, OUTPUT);
  pinMode(PIN_CG, OUTPUT);

  pinMode(PIN_LE, INPUT_PULLUP);
  pinMode(PIN_OE, INPUT_PULLUP);

  pinMode(PIN_A0, INPUT_PULLUP);
  pinMode(PIN_A1, INPUT_PULLUP);
  pinMode(PIN_A2, INPUT_PULLUP);
  pinMode(PIN_A3, INPUT_PULLUP);
  pinMode(PIN_A4, INPUT_PULLUP);
  pinMode(PIN_A5, INPUT_PULLUP);
  pinMode(PIN_A6, INPUT_PULLUP);
  pinMode(PIN_A7, INPUT_PULLUP);
  pinMode(PIN_A8, INPUT_PULLUP);
  pinMode(PIN_A9, INPUT_PULLUP);
  pinMode(PIN_A10, INPUT_PULLUP);
  pinMode(PIN_A11, INPUT_PULLUP);
  pinMode(PIN_A12, INPUT_PULLUP);
  pinMode(PIN_A13, INPUT_PULLUP);
  pinMode(PIN_A14, INPUT_PULLUP);
  pinMode(PIN_A15, INPUT_PULLUP);

  // initially all cathodes and anodes off
  digitalWrite(PIN_CA, HIGH);
  digitalWrite(PIN_CB, HIGH);
  digitalWrite(PIN_CC, HIGH);
  digitalWrite(PIN_CD, HIGH);
  digitalWrite(PIN_CE, HIGH);
  digitalWrite(PIN_CF, HIGH);
  digitalWrite(PIN_CG, HIGH);

  digitalWrite(PIN_AN0, HIGH);
  digitalWrite(PIN_AN1, HIGH);
  digitalWrite(PIN_AN2, HIGH);
  digitalWrite(PIN_AN3, HIGH);

}

// storage for what we read from [A0..A15] inputs

int raw_value = 0;
int s = 1;
// port C is MSB, port A is LSB
void read_raw_value() {
    raw_value = (PINC << 8) | PINA;
}

void display_value() {
  PORTB &= ~0x0F;
  PORTB |= 0x07;  
  PORTD &= ~0x7F; // clear all digit bits
  PORTD |= digits[(raw_value & 0xF000) >> 12];
  delay(s);

  PORTB &= ~0x0F;
  PORTB |= 0x0B;
  PORTD &= ~0x7F; // clear all digit bits
  PORTD |= digits[(raw_value & 0x0F00) >> 8];
  delay(s);

  PORTB &= ~0x0F;
  PORTB |= 0x0D;
  PORTD &= ~0x7F; // clear all digit bits
  PORTD |= digits[(raw_value & 0x00F0) >> 4];
  delay(s);

  PORTB &= ~0x0F;
  PORTB |= 0x0E;
  PORTD &= ~0x7F; // clear all digit bits
  PORTD |= digits[(raw_value & 0x000F) ];
  delay(s );

  PORTB &= ~0x0F;
  PORTB |= 0x0F;
}

int counter = 0;
void loop() {
//  raw_value = 0x8888;
  if (PIND & 0x80) { // only read inputs if LE is not 0.
    read_raw_value();
  } 

  // only display things if OE is low
  if ((PINB & 0x10)) {
    display_value();
  }
//  if (counter % 200 == 0) {
//    raw_value ++;
//    counter = 0;
//  }
}
