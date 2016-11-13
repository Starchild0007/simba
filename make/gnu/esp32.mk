#
# @section License
#
# The MIT License (MIT)
# 
# Copyright (c) 2014-2016, Erik Moqvist
# 
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
# BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# This file is part of the Simba project.
#

CROSS_COMPILE = xtensa-esp32-elf-

CDEFS += F_CPU=$(F_CPU)UL \
	ICACHE_FLASH \
	__STRICT_ANSI__

CFLAGS += -Os \
          -Werror \
          -nostdlib \
          -mlongcalls \
          -mtext-section-literals \
          -ffunction-sections \
	  -fno-inline-functions \
	  -fsingle-precision-constant \
          -fdata-sections

CXXFLAGS += -Os \
          -Werror \
          -nostdlib \
          -mlongcalls \
          -mtext-section-literals \
          -ffunction-sections \
          -fdata-sections

LIBPATH += $(ESP_IDF_ROOT)/components/esp32/lib

LDFLAGS += -Wl,--cref \
           -nostdlib \
           -Wl,-EL \
           -mtext-section-literals \
           -Wl,--gc-sections

RUNARGS = $(BIN)

ESPTOOL_PY = $(SIMBA_ROOT)/3pp/esp32/esp-idf/components/esptool_py/esptool/esptool.py

build: $(BIN)
$(BIN): $(EXE)
	$(ESPTOOL_PY) --chip esp32 elf2image --flash_mode dio --flash_freq 40m -o $@ $<

include $(SIMBA_ROOT)/make/gnu.mk