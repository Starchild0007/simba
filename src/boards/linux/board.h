/**
 * @file boards/linux/board.h
 * @version 7.0.0
 *
 * @section License
 * Copyright (C) 2014-2016, Erik Moqvist
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * This file is part of the Simba project.
 */

#ifndef __BOARD_H__
#define __BOARD_H__

#define PIN_DEVICE_BASE  2

#define pin_d2_dev pin_device[2 - PIN_DEVICE_BASE]
#define pin_d3_dev pin_device[3 - PIN_DEVICE_BASE]
#define pin_d4_dev pin_device[4 - PIN_DEVICE_BASE]
#define pin_d5_dev pin_device[5 - PIN_DEVICE_BASE]
#define pin_d6_dev pin_device[6 - PIN_DEVICE_BASE]
#define pin_d7_dev pin_device[7 - PIN_DEVICE_BASE]
#define pin_d8_dev pin_device[8 - PIN_DEVICE_BASE]
#define pin_d9_dev pin_device[9 - PIN_DEVICE_BASE]
#define pin_d10_dev pin_device[10 - PIN_DEVICE_BASE]
#define pin_d11_dev pin_device[11 - PIN_DEVICE_BASE]
#define pin_d12_dev pin_device[12 - PIN_DEVICE_BASE]
#define pin_d13_dev pin_device[13 - PIN_DEVICE_BASE]

#define pin_a0_dev pin_device[14 - PIN_DEVICE_BASE]
#define pin_a1_dev pin_device[15 - PIN_DEVICE_BASE]
#define pin_a2_dev pin_device[16 - PIN_DEVICE_BASE]
#define pin_a3_dev pin_device[17 - PIN_DEVICE_BASE]
#define pin_a4_dev pin_device[18 - PIN_DEVICE_BASE]
#define pin_a5_dev pin_device[19 - PIN_DEVICE_BASE]
#define pin_a6_dev pin_device[20 - PIN_DEVICE_BASE]
#define pin_a7_dev pin_device[21 - PIN_DEVICE_BASE]

#define pin_led_dev pin_d13_dev

#define pwm_d3_dev pwm_device[3]
#define pwm_d9_dev pwm_device[0]
#define pwm_d10_dev pwm_device[1]
#define pwm_d11_dev pwm_device[2]

#define adc_0_dev adc_device[0]

/**
 * Convert given pin string to the pin number.
 *
 * @param[in] str_p Pin as a string.
 *
 * @return Pin number of negative error code.
 */
int board_pin_string_to_device_index(const char *str_p);

#endif
