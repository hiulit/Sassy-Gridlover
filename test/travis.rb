#!/usr/bin/env ruby
result = `sass example/scss/main.scss example/css/main.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('example/css/built.css')
puts "Regular compile worked successfully"
