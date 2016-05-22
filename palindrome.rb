# -*- coding: utf-8 -*-
if (ARGV[0].to_s.length == 0 || ARGV[1].to_s.length == 00)
  abort("argument invalide")
end
if (ARGV[1].to_i < 1 || ARGV[1].to_i > 10)
  abort("argument invalid")
end
nb = ARGV[0].to_s
base = ARGV[1].to_i
refn = nb.to_i(10).to_s(base)
refr = nb.to_i(10).to_s(base).reverse
count = 0
while (refn != refr)
  refn = refn.to_i + refr.to_i
  refn = refn.to_s
  refr = refn.reverse
  count += 1
  if (refn.to_i >= 4147483647)
    abort("overflow")
  elsif (count.to_i >= 4147483647)
    abort("pas de solution")
  end
end
refn = refn.to_i(base).to_s(10)
puts "#{ARGV[0]} donne #{refn} en #{count} itérations en base #{ARGV[1]}"
