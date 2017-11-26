#! /usr/bin/env luajit

local function m(d)
    return 60.0 / 5000.0 * d
end

local d = tonumber(arg[1]) or 1000

local mf = m(d)
local mi = math.floor(mf)
local md = mf - mi

print("\n")
if md == 0.0 then
    print(string.format("步行 %d 米, 需花 %d 分钟\n\n", d, mf))
else
    print(string.format("步行 %d 米, 需花 %d 分 %.1f 秒\n\n", d, mi, (md * 60)))
end
