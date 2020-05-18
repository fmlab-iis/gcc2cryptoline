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

#include "tree-pass.h"
#include "ssa.h"
#include "stmt.h"
#include "gimple-iterator.h"
#include "tree-cfg.h"
#include "tree-ssa.h"
#include "gimple-pretty-print.h"

#include "context.h"


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
