if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

(1..100).each do |i|
  puts case
       when i % 15 == 0 then "тыры-пыры"
       when i % 3 == 0 then "тыры"
       when i % 5 == 0 then "пыры"
       else i
       end
end