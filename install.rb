#!/usr/bin/env ruby
# Install emacs stuff

require 'fileutils'

CWD = File.expand_path(File.dirname(__FILE__))
HOME = File.expand_path('~')

local = File.join(CWD, 'local.el')
unless File.exist?(local)
  open(local, "w") do |f|
    f.puts '(load "ekpneo")'
  end
end

links = 
  [ [ File.join(CWD, '.'), File.join(HOME, '.emacs.d') ],
    [ File.join(CWD, 'emacs.el'), File.join(HOME, '.emacs') ] ]

links.each do |pair|
  begin
    Fileutils.ln_s(*pair)
  rescue
    puts "#{pair[1]} exists"
  end
end

# Git submodules
`git submodule update --init`
