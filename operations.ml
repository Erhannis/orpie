(*  Orpie -- a stack-based RPN calculator for the console
 *  Copyright (C) 2003-2004  Paul Pelzl
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 *  Please send bug reports, patches, etc. to Paul Pelzl at 
 *  <pelzlpj@eecs.umich.edu>.
 *)


(* A function will push any item in the entry buffer before performing the
 * operation.  A command does not take input, so it is not allowed when data is
 * in the entry buffer.  An edit is an operation that acts on the data in the
 * entry buffer (e.g. backspace). *)
type function_operation_t = | Add | Sub | Mult | Div | Neg | Inv
                            | Pow | Sqrt | Sq | Abs | Arg | Exp | Ln 
                            | Ten_x | Log10 | Conj | Sin | Cos | Tan 
                            | Asin | Acos | Atan | Sinh | Cosh | Tanh
                            | Asinh | Acosh | Atanh | Re | Im 
                            | Gamma | LnGamma | Erf | Erfc | Fact
                            | Transpose | Mod | Floor | Ceiling
                            | ToInt | ToFloat | SolveLin | Eval
                            | Store | Purge | Gcd | Lcm | Binom | Perm
                            | Total | Mean | Sumsq | Var |VarBias
                            | Stdev | StdevBias | Min | Max 
                            | Utpn | Rand;;

type command_operation_t  = | Drop | Clear | Swap | Dup | Undo
                            | BeginBrowse | BeginExtended | BeginVar | Quit
                            | SetRadians | SetDegrees | SetRect | SetPolar
                            | SetBin | SetOct | SetDec | SetHex
                            | ToggleAngleMode | ToggleComplexMode | CycleBase
                            | View | About | Refresh | EnterPi 
                            | EditInput | CycleHelp;;

type edit_operation_t     = | Digit | Enter | Backspace | Minus | SciNotBase 
                            | BeginInteger | BeginComplex | BeginMatrix
                            | Separator | Angle;;

type browse_operation_t   = | EndBrowse
                            | ScrollLeft | ScrollRight | RollDown | RollUp
                            | PrevLine | NextLine | Echo | ViewEntry
                            | Drop1 | DropN | Keep | KeepN
                            | EditEntry;;

type extended_operation_t = | ExitExtended | EnterExtended | ExtBackspace;;

type integer_edit_operation_t = | ExitIntEdit;;

type var_edit_operation_t = | ExitVarEdit | EnterVarEdit | VarEditBackspace
                            | CompleteVarEdit;;

type operation_t = | Function of function_operation_t 
                   | Command  of command_operation_t
                   | Edit     of edit_operation_t
                   | Browse   of browse_operation_t
                   | Extend   of extended_operation_t
                   | IntEdit  of integer_edit_operation_t
                   | VarEdit  of var_edit_operation_t;;




(* arch-tag: DO_NOT_CHANGE_e761ca10-6bfd-4edf-a3de-53778a07ca21 *)
