#include "TimerOne.h"
#include "LiquidCrystal_I2C.h"
#include "Wire.h" 
 
// A7 - Voltage divider (solar)
// A0 - ACS 712 Out
// A1 - ACS 712 In
// A2 - Voltage divider (battery)
// A4 - LCD SDA
// A5 - LCD SCL
// D6 - LCD back control button
// D5 - Load Control
// D8 - 2104 MOSFET driver SD
// D9 - 2104 MOSFET driver IN
// D10- Green LED
// D11- Blue LED
// D12- Red LED
 
#define LOAD_ALGORITHM 0
#define SOL_VOLTS_CHAN 7
#define bat_voltsS_CHAN 2
#define SOL_AMPS_CHAN 1
#define BAT_AMPS_CHAN 0
#define AVG_NUM 8
#define SOL_VOLTS_SCALE 0.024700275
#define bat_voltsS_SCALE 0.025306075
#define SOL_AMPS_SCALE  0.074200000
#define BAT_AMPS_SCALE  0.048806081
#define PWM_PIN 9
#define PWM_ENABLE_PIN 8
#define PWM_FULL 1023
#define PWM_MAX 100
#define PWM_MIN 60
#define PWM_START 90
#define PWM_INC 1
#define TRUE 1
#define FALSE 0
#define ON TRUE
#define OFF FALSE
#define TURN_ON_MOSFETS digitalWrite(PWM_ENABLE_PIN, HIGH)
#define TURN_OFF_MOSFETS digitalWrite(PWM_ENABLE_PIN, LOW)
#define ONE_SECOND 50000
#define LOW_SOL_WATTS 5.00
#define MIN_SOL_WATTS 1.00
#define MIN_bat_voltsS 11.00
#define MAX_bat_voltsS 14.10
#define BATT_FLOAT 13.60
#define HIGH_bat_voltsS 13.00
#define LVD 11.5
#define OFF_NUM 9
#define LED_GREEN 10
#define LED_BLUE 11
#define LED_RED 12
#define LOAD_PIN 5
#define BACK_LIGHT_PIN 6  
    

//#define TEMP_ICON 11
//byte temp[8] = //icon for termometer
//{
//0b00100,0b01010,0b01010,0b01110,0b01110,0b11111,0b11111,0b01110
//};
#define BATT_ICON 10 
byte battery[8] =  // icon for battery
{
0b01110,0b11111,0b111111,0b11111,0b11111,0b11111,0b11111,0b11111
};
#define POW_ICON 9 
byte energy[8] =  // icon for power
{
0b00010,0b00100,0b01000,0b11111,0b00010,0b00100,0b01000,0b00000
};
byte battery_icons[6][8]=
{{
0b01110,0b11011,0b10001,0b10001,0b10001,0b10001,0b11111,0b00000,
},
{0b01110,0b11011,0b10001,0b10001,0b10001,0b11111,0b11111,0b00000,
},
{0b01110,0b11011,0b10001,0b10001,0b11111,0b11111,0b11111,0b00000,
},
{0b01110,0b11011,0b11111,0b11111,0b11111,0b11111,0b11111,0b00000,
},
{0b01110,0b11111,0b11111,0b11111,0b11111,0b11111,0b11111,0b00000,
},
{0b01110,0b11111,0b11111,0b11111,0b11111,0b11111,0b11111,0b00000,
}};
#define SOLAR_ICON 6
byte solar_icon[8] =
{0b11111,0b10101,0b11111,0b10101,0b11111,0b10101,0b11111,0b00000
};

#define LOAD_ICON 7
byte _LOAD_icon[8]=
{ 0b01110,0b10001,0b10001,0b10001,0b01110,0b01110,0b00100,0b00000
};
byte backslash_char[8]=
{0b01010,0b01010,0b11111,0b10001,0b10001,0b01110,0b00100,0b00100,
};
float sol_amps;
float bat_amps;
float sol_volts;
float bat_voltss;
float sol_watts;
float bat_watts;
float old_sol_watts = 0;
float msec=0;
float last_msec=0;
float elasped_msec=0;
float elasped_time=0;
float ampSecs = 0;
float ampHours=0;
float watts=0;
float wattSecs = 0;
float wattHours=0;
unsigned int seconds = 0;
unsigned int prev_seconds = 0;
unsigned int interrupt_counter = 0;
unsigned long time = 0;
int delta = PWM_INC;
int pwm = 0;
int back_light_pin_State = 0;
boolean load_status = false;
enum charger_mode {off, on, bulk, bat_float} charger_state;
LiquidCrystal_I2C lcd(0x3F, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);  
 
void setup()
{
  pinMode(PWM_ENABLE_PIN, OUTPUT);
  TURN_OFF_MOSFETS;
  charger_state = off;
  lcd.begin(20,4);
  lcd.backlight();
  for (int batchar = 0; batchar < 6; ++batchar)
  {
   lcd.createChar(batchar, battery_icons[batchar]);
  }
  lcd.createChar(LOAD_ICON,_LOAD_icon);
  lcd.createChar(SOLAR_ICON,solar_icon);
  lcd.createChar('\\', backslash_char);
  lcd.createChar(POW_ICON, energy);
  lcd.createChar(BATT_ICON,battery);
 // lcd.createChar(TEMP_ICON,temp);
  pinMode(LED_RED, OUTPUT);
  pinMode(LED_GREEN, OUTPUT);
  pinMode(LED_BLUE, OUTPUT);
  Timer1.initialize(20);
  Timer1.pwm(PWM_PIN, 0);
  Timer1.attachInterrupt(callback);
  Serial.begin(9600);
  pwm = PWM_START;
  pinMode(BACK_LIGHT_PIN, INPUT);
  pinMode(LOAD_PIN,OUTPUT);
  digitalWrite(LOAD_PIN,LOW);
  digitalWrite(BACK_LIGHT_PIN,LOW);
  
}
 
void loop()
{
  read_data();
  run_charger();
  power();
  load_control();
  led_output();
  lcd_display(); 
}
 
int read_adc(int channel)
{
  int sum = 0;
  int temp;
  int i;
 
  for (i=0; i<AVG_NUM; i++)
  { temp = analogRead(channel);
  sum += temp;
  delayMicroseconds(50);
  }
  return(sum / AVG_NUM);
  }
  void read_data(void)
  {
    
  sol_amps = (read_adc(SOL_AMPS_CHAN) * SOL_AMPS_SCALE -37.75);
  bat_amps = (read_adc(BAT_AMPS_CHAN) * BAT_AMPS_SCALE -24.88);
  sol_volts = read_adc(SOL_VOLTS_CHAN) * SOL_VOLTS_SCALE;
  bat_voltss = read_adc(bat_voltsS_CHAN) * bat_voltsS_SCALE;
  bat_watts = bat_amps * bat_voltss ; 
  sol_watts = sol_amps * sol_volts ;
  }
  void callback()
  {
    if (interrupt_counter++ > ONE_SECOND)
  {
    interrupt_counter = 0;
    seconds++;
  }
  }
 
void set_pwm_duty(void)
{
 
  if (pwm > PWM_MAX)
  {
    pwm = PWM_MAX;
  }
  else if (pwm < PWM_MIN)
  {
    pwm = PWM_MIN;
  }
  if (pwm < PWM_MAX)
  {
    Timer1.pwm(PWM_PIN,(PWM_FULL * (long)pwm / 100), 20);
  }
  else if (pwm == PWM_MAX)
  {
    Timer1.pwm(PWM_PIN,(PWM_FULL - 1), 20);
}
}   
 
void run_charger(void)
{
  static int off_count = OFF_NUM;
  switch (charger_state)
  {
    case on:
      if (sol_watts < MIN_SOL_WATTS)
      { 
        charger_state = off;
        off_count = OFF_NUM; TURN_OFF_MOSFETS;
      }  
      else if (bat_voltss > (BATT_FLOAT - 0.1))
      {
        charger_state = bat_float;
      }
      else if (sol_watts < LOW_SOL_WATTS)
      {
        pwm = PWM_MAX;
        set_pwm_duty();
      }
      else
      {
        pwm = ((bat_voltss * 10) / (sol_volts / 10)) + 5;
        charger_state = bulk;
      }
      break;
 
    case bulk:
      if (sol_watts < MIN_SOL_WATTS) { charger_state = off; off_count = OFF_NUM; TURN_OFF_MOSFETS; } else if (bat_voltss > BATT_FLOAT)
      {
        charger_state = bat_float;
      }
      else if (sol_watts < LOW_SOL_WATTS) { charger_state = on; TURN_ON_MOSFETS; } else { if (old_sol_watts >= sol_watts)
        {
          delta = -delta;
        }
        pwm += delta;
        old_sol_watts = sol_watts;
        set_pwm_duty();
      }
      break;
 
    case bat_float:
      if (sol_watts < MIN_SOL_WATTS) { charger_state = off; off_count = OFF_NUM; TURN_OFF_MOSFETS; set_pwm_duty(); } else if (bat_voltss > BATT_FLOAT)
      {
        TURN_OFF_MOSFETS;
        pwm = PWM_MAX;
        set_pwm_duty();
      }
      else if (bat_voltss < BATT_FLOAT)
      {
        pwm = PWM_MAX;
        set_pwm_duty();
        TURN_ON_MOSFETS;
        if (bat_voltss < (BATT_FLOAT - 0.1)) { charger_state = bulk; } } break; case off: TURN_OFF_MOSFETS; if (off_count > 0)
      {
        off_count--;
      }
      else if ((bat_voltss > BATT_FLOAT) && (sol_volts > bat_voltss))
      {
        charger_state = bat_float;
        TURN_ON_MOSFETS;
      }
      else if ((bat_voltss > MIN_bat_voltsS) && (bat_voltss < BATT_FLOAT) && (sol_volts > bat_voltss))
      {
        charger_state = bulk;
        TURN_ON_MOSFETS;
      }
      break;
    default:
      TURN_OFF_MOSFETS;
      break;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////

//------------------------------------------------------------------------------------------------------------
void power(void)

{
msec = millis();
elasped_msec = msec - last_msec; //Calculate how long has past since last call of this function
elasped_time = elasped_msec / 1000.0; // 1sec=1000 msec
watts = bat_amps * bat_voltss; //Watts now
ampSecs = (bat_amps*elasped_time); //AmpSecs since last measurement
wattSecs = ampSecs * bat_voltss; //WattSecs since last measurement
ampHours = ampHours + ampSecs/3600; // 1 hour=3600sec //Total ampHours since program started
wattHours = wattHours + wattSecs/3600; // 1 hour=3600sec //Total wattHours since program started
last_msec = msec; //Store 'now' for next time
}


/////////////////////////////////////////////////////////////////////////////////LOAD CONTROL
void load_control()
{
#if LOAD_ALGORITHM == 0
  load_on(sol_watts < MIN_SOL_WATTS && bat_voltss > LVD);
#else
  load_on(sol_watts > MIN_SOL_WATTS && bat_voltss > BATT_FLOAT);
#endif
}
 
void load_on(boolean new_status)
{
  if (load_status != new_status)
  {
    load_status = new_status;
    digitalWrite(LOAD_PIN, new_status ? HIGH : LOW);
  }
}
/////////////////////////////////////////////////////////////////////////////////// LED INDICATOR
 void light_led(char pin)
{
  static char last_lit;
  if (last_lit == pin)
      return;
  if (last_lit != 0)
      digitalWrite(last_lit, HIGH);
  digitalWrite(pin, LOW);
  last_lit = pin;
}
 
void led_output(void)
{
  static char last_lit;
  if(bat_voltss > 14.1 )
      light_led(LED_BLUE);
  else if(bat_voltss > 11.9)
      light_led(LED_GREEN);
  else
      light_led(LED_RED);
}
//////////////////////////////////////////////////////////////////////////////////// LCD BUTTON
void lcd_display()
{
  static bool current_backlight_state = -1;
  back_light_pin_State = digitalRead(BACK_LIGHT_PIN);
  if (current_backlight_state != back_light_pin_State)
  {
    current_backlight_state = back_light_pin_State;
    if (back_light_pin_State == HIGH)
      lcd.backlight();
    else
      lcd.noBacklight();
  }
 
  if (back_light_pin_State == HIGH)
  {
    time = millis();
  }
/////////////////////////////////////////////////////////////////////////////////// LCD DISPLAY
 lcd.setCursor(0, 0);
 lcd.write(SOLAR_ICON);/
 
 lcd.setCursor(2, 0);
 lcd.print(sol_volts);

 lcd.setCursor(8, 0);
 lcd.print(sol_amps);
 lcd.print("A");
 
 lcd.setCursor(14, 0);
 lcd.print(sol_watts);
 lcd.print("W ");
 
 lcd.setCursor(0, 1);
 lcd.write(BATT_ICON);//In
 
 lcd.setCursor(2, 1);
 lcd.print(bat_voltss);
 
 lcd.setCursor(8,1);
 lcd.print(bat_amps);
 lcd.print("A");
 
 lcd.setCursor(14,1);
 lcd.print(bat_watts);
 lcd.print("W ");

 lcd.setCursor(0,3);
 lcd.write(POW_ICON);
 lcd.setCursor(1,3);
 lcd.write(POW_ICON);
 lcd.setCursor(3,3);
 lcd.print(wattHours);
 lcd.print("WH"); 


 //lcd.setCursor(14,3);
// lcd.write(TEMP_ICON);
// lcd.print("23");
// lcd.write(0b11011111);
 //lcd.print("C");
 
 lcd.setCursor(8, 2);
 lcd.write(POW_ICON);//////////////////////////////////////////////// ICON 2

 int pct = 100.0*(bat_voltss - 11.3)/(12.7 - 11.3);
 if (pct < 0) pct = 0; else if (pct > 100)
     pct = 100;
 
 lcd.setCursor(0,2);
 lcd.print((char)(pct*5/100));
 
 lcd.setCursor(10,2);///////////////////////////////////////////////////////// % Batt
 pct = pct - (pct%10);
 lcd.print(pct);
 lcd.print("%  ");
 
 lcd.setCursor(2,2);
 if (charger_state == on)
 lcd.print("On   ");
 else if (charger_state == off)
 lcd.print("Off  ");
 else if (charger_state == bulk)
 lcd.print("bulk ");
 else if (charger_state == bat_float)
 {
 lcd.print("     ");
 lcd.setCursor(10,2);
 lcd.print("Float");
 }
 /////////////////////////////////////////////////////////////////////////// LOAD STATUS
 lcd.setCursor(14,2);
 lcd.write(LOAD_ICON);
 lcd.setCursor(16,2);
 if (load_status)
 {
    lcd.print("On  ");
 }
 else
 {
   lcd.print("Off ");
 }
 
 //lcd.setCursor(13,0);
 //lcd.print("PWM");
 //lcd.setCursor(16,0);
// lcd.print("   ");
// lcd.setCursor(17,0);
// if( charger_state == off)
// lcd.print(0);
 //else
// lcd.print(pwm);
 //lcd.print("% ");
 
 
 backLight_timer();
}
 
void backLight_timer()
{
  if((millis() - time) <= 90000)
      lcd.backlight();
  else
      lcd.noBacklight();
}
