#!/usr/bin/env ruby

require "arrow"
require "parquet"

table = Arrow::Table.load("sample.csv")
table.save("sample.arrow")
table.save("sample.parquet")

puts(Arrow::Table.load("sample.parquet"))
