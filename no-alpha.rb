#!/usr/bin/env ruby

require "arrow-gdk-pixbuf"
require "arrow-numo-narray"

pixbuf = GdkPixbuf::Pixbuf.new(file: "lavie.png")

narray = pixbuf.to_arrow.to_narray
narray[true, true, 3] = 0xff
no_alpha_pixbuf = narray.to_arrow.to_pixbuf

no_alpha_pixbuf.save("png", filename: "lavie-no-alpha.png")

