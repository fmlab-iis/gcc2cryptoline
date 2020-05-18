#ifndef COMMON_H
#define COMMON_H

#include <bits/stdc++.h>
#include <fmt/core.h>
#include <fmt/format.h>
#include <fmt/ostream.h>
#include "rang.hpp"

// start the gcc header
#include "gcc-plugin.h"
#include "plugin-version.h"

#include "tree.h"
#include "gimple.h"
#include "cfghooks.h"

#include "tree-pass.h"
#include "memmodel.h"
#include "tm_p.h"
#include "ssa.h"
#include "cgraph.h"
#include "varasm.h"
#include "stor-layout.h"
#include "stmt.h"
#include "print-tree.h"
#include "cfgrtl.h"
#include "cfganal.h"
#include "cfgbuild.h"
#include "cfgcleanup.h"
#include "explow.h"
#include "calls.h"
#include "internal-fn.h"
#include "tree-eh.h"
#include "gimple-iterator.h"
#include "gimple-expr.h"
#include "tree-cfg.h"
#include "tree-dfa.h"
#include "tree-ssa.h"
#include "except.h"
#include "gimple-pretty-print.h"
#include "toplev.h"
#include "debug.h"
#include "params.h"
#include "tree-inline.h"
#include "value-prof.h"
#include "cfgloop.h"
#include "stringpool.h"
#include "attribs.h"
#include "asan.h"
#include "tree-ssa-address.h"
#include "output.h"
#include "builtins.h"

#include "context.h"
#include "function.h"
#include "is-a.h"
#include "predict.h"
#include "basic-block.h"
#include "tree-ssa-alias.h"
#include "gimple-ssa.h"
#include "tree-pretty-print.h"
#include "tree-pass.h"
#include "tree-ssa-operands.h"
#include "tree-phinodes.h"
#include "gimple-iterator.h"
#include "gimple-walk.h"
#include "diagnostic.h"

#include "ssa-iterators.h"

using namespace rang;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::string;
using std::stringstream;
using std::to_string;

#define DEBUG DDEBUG << __LINE__ << ":"
#define NOT_IMPLEMENT assert(false && "Not implemented")

#endif
