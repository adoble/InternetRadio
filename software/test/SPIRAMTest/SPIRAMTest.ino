#include <SPI.h>

// SRAM instructions
#define RDSR  0x05
#define WRSR  0x01
#define READ  0x03
#define WRITE 0x02

// SRAM Hold disable bit.
#define HOLD_DISABLE 1

// SRAM byte mode
#define BYTE_MODE (0x00 | HOLD_DISABLE)

const boolean VERBOSE = true;

//SPIClass *spi;
//SPIClass spi(&sercom1, 12, 13, 11, SPI_PAD_0_SCK_1, SERCOM_RX_PAD_3);

//SPISettings spiSettings(16000000, MSBFIRST, SPI_MODE0);   // NOT OK
// SPISettings spiSettings(8000000, MSBFIRST, SPI_MODE0);  // OK
 SPISettings spiSettings(150000, MSBFIRST, SPI_MODE0);  // OK


// SPISettings spiSettings(1000000, MSBFIRST, SPI_MODE0);  //OK
// SPISettings spiSettings(1200000, MSBFIRST, SPI_MODE0);  //OK
// SPISettings spiSettings(1400000, MSBFIRST, SPI_MODE0);    //OK
// SPISettings spiSettings(1200000, MSBFIRST, SPI_MODE0);   
// SPISettings spiSettings(10000000, MSBFIRST, SPI_MODE0);   // NOT OK
//  SPISettings spiSettings(14000000, MSBFIRST, SPI_MODE0);  // NOT OK


    


// Pins
const int RAM_CS = 2; // Chip select pin for RAM = A4

const int FP_CONTROLLER_CS = 0; 
const int XDCS = 16;
const int XCS = 4;


const int maxNumberTestPasses = 3;

int mode;
int operationMode; 

uint16_t addr=0;

int failures = 0; 
int testPasses = 1; 
int testNumber = 0;

void setup() {
  //while(!Serial) yield();
  Serial.begin(115200);

  Serial.println("SPIRAMTest");

  //spi = new SPIClass(&sercom1, 12, 13, 11, SPI_PAD_0_SCK_1, SERCOM_RX_PAD_3);

  pinMode(RAM_CS, OUTPUT);

  // Make sure other chip selects are high
  pinMode(FP_CONTROLLER_CS, OUTPUT); 
  pinMode(XDCS, OUTPUT); 
  pinMode(XCS, OUTPUT); 
  
  digitalWrite(FP_CONTROLLER_CS, HIGH);
  

   // Pulling the following high causes incorrect reads, don't know why  --->  FIXME
  digitalWrite(XDCS, HIGH); //!!!!!!!!
  digitalWrite(XCS, HIGH); 

  delay(10);


  SPI.begin();

    // Set mode
  setMode(BYTE_MODE);

  //initMem();

}


void loop() {
  long randomNumber;


  delayMicroseconds(50);
  //unsigned int address = B00001111;
  unsigned char  testVal = B1010100;

  if (addr==0) {
    Serial.println();
    Serial.print("Start test pass ");
    Serial.println(testPasses);
  }
  //randomNumber = random(255);
  // Use the last byte
  //testVal = randomNumber & 0xFF;

  SPI.beginTransaction(SPISettings(1500000, MSBFIRST, SPI_MODE0));  // 1.5MHz, should be enough for 128Kbps MP3
 

  writeByte(addr, testVal);

  delayMicroseconds(10);

  unsigned char returnVal = 0;
  returnVal = readByte(addr);

  SPI.endTransaction();

  testNumber++;

  if (returnVal != testVal) {
    failures++;
    if (VERBOSE) {
      Serial.println();
      Serial.print("FAIL at addr\t");
      Serial.print(addr, 10);
      Serial.print("\t");
      Serial.print(addr, BIN);
      Serial.print("\t");
      Serial.print(testVal, BIN);
      Serial.print(":");
      Serial.print(returnVal, BIN);
      Serial.print(" (wrote:read) ");
      //Serial.print(testOK?"":  "  Incorrect test was previously detected.");
      Serial.println();
    } 
  } else {
    if (VERBOSE) {
      if (testNumber%40 != 0) Serial.print('.');
      else Serial.println('.');
    }
  }

  addr++;
  //if (addr >= 256*1024) addr = 0; 
  if (addr >= 32768) {
    addr = 0;  
    Serial.println(); 
    Serial.print("Test pass #"); 
    Serial.print(testPasses); 
    Serial.print(" completed with "); 
    Serial.print(failures);
    Serial.println(" failures"); 
    Serial.println(); 
    failures = 0;
    testPasses++; 
    
  }

  if (testPasses > maxNumberTestPasses) {
    Serial.println();
    Serial.println("All tests finished!");
    Serial.println();
   }
  


}

void initMem() {
  for (unsigned int i = 0; i< 256; i++) {
    writeByte(i, 0);
  }
  Serial.println("Finished init");
}

void setMode(char mode)
{
  
    SPI.beginTransaction(spiSettings);
    chipSelect(true);
    SPI.transfer(WRSR);
    SPI.transfer(mode);
    chipSelect(false);
    SPI.endTransaction();
    operationMode = mode;
  
}

void chipSelect(bool state)
 {
   if (state) {
    digitalWrite(RAM_CS, LOW);
   } else {
    digitalWrite(RAM_CS, HIGH);
   }
 }

void writeByte(unsigned int address, char data)
{

  // Set byte mode
  //setMode(BYTE_MODE);

  // Write address, read data
  SPI.beginTransaction(spiSettings); // !!!! before chip select 
  chipSelect(true);  
  SPI.transfer(WRITE);
  SPI.transfer((unsigned char)(address >> 8));
  SPI.transfer((unsigned char)address);

  SPI.transfer(data);
  chipSelect(false);

  SPI.endTransaction();  // !!!!! after chip select 

}

unsigned char readByte(unsigned int address)

{
  //unsigned char res;
  unsigned char res;

  // Set byte mode
  //setMode(BYTE_MODE);

  // Write address, read data
  SPI.beginTransaction(spiSettings);
  
  chipSelect(true);
  
  SPI.transfer(READ);
  SPI.transfer((unsigned char)(address >> 8));
  SPI.transfer((unsigned char)address);

  res = SPI.transfer(0xFF);
  chipSelect(false);

  SPI.endTransaction();
 
  
  return res;
}


