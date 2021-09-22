// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: dist_normal_function
:description: $dist_normal test
:tags: 20.15
:type: simulation elaboration parsing
*/

module top();

initial begin
	integer seed = 1234;
	$display("%d", $dist_normal(seed, 0, 100));
end

endmodule
