#!/usr/bin/env ruby

def caesar_cipher(str, inc)
  newStr = String.new
  str.split('').each do |c|
    if c.match(/[a-zA-Z]/)
      cc = c.ord
      bounds = cc <= 90 ? {max: 90, min: 65} : {max: 122, min: 97}
      inc.times do 
        cc += 1
        cc = bounds[:min] if cc > bounds[:max]
      end
      newStr << cc.chr
    else 
      newStr << c
    end
  end
  newStr
end

puts caesar_cipher("What a string!", 5)