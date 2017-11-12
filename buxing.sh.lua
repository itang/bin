#! /usr/bin/env luajit

function m(d)
    return 60.0 / 5000.0 * d
end

d = tonumber(arg[1]) or 1000
-- for k, v in pairs(arg) do
--   print(k, v)
-- end
-- print("len", #arg)

if #arg > 1 then
    d = tonumber(arg[1])
end

mf = m(d)
mi = math.floor(mf)
md = mf - mi

print("\n")
if md == 0.0 then
    print(string.format("步行 %d 米, 需花 %d 分钟\n\n", d, mf))
else
    print(string.format("步行 %d 米, 需花 %d 分 %.1f 秒\n\n", d, mi, (md * 60)))
end
