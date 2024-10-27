# Copyright (C) 2020 The SymbiFlow Authors.
#
# Use of this source code is governed by a ISC-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/ISC
#
# SPDX-License-Identifier: ISC

INSTALL_DIR := $(abspath $(OUT_DIR)/runners/)

RDIR := $(abspath third_party/tools)
TDIR := $(abspath tools)
CDIR := $(abspath conf)

.PHONY: runners

# svv
svv: $(INSTALL_DIR)/bin/svv

$(INSTALL_DIR)/bin/svv:
	@cd ../ && ./configure && make && make install

# setup the dependencies
RUNNERS_TARGETS := svv
.PHONY: $(RUNNERS_TARGETS)

runners: $(RUNNERS_TARGETS)