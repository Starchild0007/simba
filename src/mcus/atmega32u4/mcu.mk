#
# @file mcus/atmega32u4/mcu.mk
# @version 7.0.0
#
# @section License
# Copyright (C) 2014-2016, Erik Moqvist
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# This file is part of the Simba project.
#

INC += $(SIMBA_ROOT)/src/mcus/atmega32u4
SRC += $(SIMBA_ROOT)/src/mcus/atmega32u4/mcu.c

F_CPU = 16000000
CPU = atmega32u4
MAIN_STACK_END = 0x800900

ARCH = avr
FAMILY = avr

MCU_HOMEPAGE = "http://www.atmel.com"
MCU_NAME = "Atmel ATMega32u4"
MCU_DESC = "Atmel ATMega32u4 AVR @ 16MHz, 2.5k sram, 32k flash"

include $(SIMBA_ROOT)/make/$(TOOLCHAIN)/avr.mk
