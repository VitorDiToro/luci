-- Copyright 2017 Vitor Di Toro <vitorditoro@inatel.br>, <vitorrditoro@gmail.com>

m = Map("network", translate("Set WAN Settings"),
translate("Set the WAN inteface Speed, Auto-Negotiation and Duplex."))

s = m:section(TypedSection, "pppoewansettings", translate("WAN Settings:"))

s.anonymous = true
s.addemove = false

-- list value (Speeds)
lv = s:option(ListValue, "wanspeed", translate("WAN Speed Configuration"))
lv.default = "100"
lv:value("100", "100 Mbps")
lv:value("10", "10 Mbps")
lv.rmempty = true

-- checkbox (Auto-Negotiation)
cb = s:option(Flag, "autoneg", translate("Auto-Negotiation"))
cb.rmempty = true

-- list value (Duplex)
lv = s:option(ListValue, "duplex", translate("Duplex Configuration"))
lv.default = "full"
lv:value("full", "Full Duplex")
lv:value("half", "Half Duplex")
lv.rmempty = true

return m

