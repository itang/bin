#!/usr/bin/env ruby

def m(d)
  r = 60.0 / 5000.0
  r * d
end

d = (ARGV[0] || '1000').to_i

mf = m(d)
mi = mf.to_i
md = mf - mi

puts

if md == 0.0
  printf("步行 %d 米, 需花 %d 分钟\n\n", d, mi)
else
  printf("步行 %d 米, 需花 %d 分 %.1f 秒\n\n", d, mi, md * 60)
end
