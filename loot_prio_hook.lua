BINDING_HEADER_DKP = "Knightfall Priority";

GameTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)
    local itemname, itemlink = tooltip:GetItem()
    if itemlink then
        priority = search_for_item4(itemlink:match("item:(%d+):"))
    end

    if priority then
        prio = string.format(" %s", priority)
        tooltip:AddLine(prio, 255, 255, 0, true)
    end
end)

ItemRefTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)local itemname, itemlink = tooltip:GetItem()

    if itemlink then
        priority = search_for_item4(itemlink:match("item:(%d+):"))
    end

    if priority then
        prio = string.format(" %s", priority)
        tooltip:AddLine(prio, 255, 255, 0, true)
    end
end)
