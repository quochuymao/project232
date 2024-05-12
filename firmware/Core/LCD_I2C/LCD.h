
#ifndef LCD_I2C_LCD_H_
#define LCD_I2C_LCD_H_

#include "main.h"
#include <stdio.h>

extern state_display display ;
void lcd_init (void);   // initialize lcd

void lcd_send_cmd (char cmd);  // send command to the lcd

void lcd_send_data (char data);  // send data to the lcd

void lcd_send_string (char *str);  // send string to the lcd

void lcd_clear_display (void);	//clear display lcd

void lcd_goto_XY (int row, int col); //set proper location on screen

void lcd_display(float powerIn, float  powerOut);

#endif /* LCD_I2C_LCD_H_ */