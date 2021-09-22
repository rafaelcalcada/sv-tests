// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: array-locator-methods-find-index
:description: Test support of array locator methods
:tags: 7.12.1 7.12 7.10
:type: simulation elaboration parsing
*/
module top ();

string s[] = { "hello", "sad", "world" };
int qi[$];

initial begin
	qi = s.find_index with ( item == "world" );
    $display(":assert: (%d == 1)", qi.size);
    $display(":assert: (%d == 2)", qi[0]);
end

endmodule
