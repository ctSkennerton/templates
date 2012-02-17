#!/usr/bin/env Rscript
###############################################################################
#
#    __SCRIPT_NAME__
#    
#    __DESCRIPTION__
#
#    Copyright (C) __YEAR__  __YOUR_NAME_HERE__
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###############################################################################

suppressPackageStartupMessages(library(optparse))
option_list <- list(
		make_option(c("-i", "--input"), default="NULL", type="character", 
					help="File name for the bam file"),
		make_option(c("-o", "--output"), default="NULL", type="character", 
					help="Output file name for the image")
)
options <- parse_args(OptionParser(option_list = option_list), args = commandArgs(trailingOnly=TRUE))

if( options$input =="NULL") {
	print_help(OptionParser(option_list = option_list))
	q()
if(options$output == "NULL") {
	print_help(OptionParser(option_list = option_list))
	q()
}
