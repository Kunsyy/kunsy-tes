-- ============================================================
--   Quick Trade - Standalone Item Putter
--   Jalankan terpisah dari auto_trade.lua
-- ============================================================

local QUICK_TRADE_PRESETS = {
    {
        name = "Madara",
        items = {
            { name = "Path Fragment", qty = 3 },
            { name = "Eternal Core", qty = 8 },
            { name = "Battle Sigil", qty = 18 },
            { name = "Power Remnant", qty = 15 },
        }
    },
    {
        name = "Ice Queen",
        items = {
            { name = "Ice Core", qty = 3 },
            { name = "Frozen Brand", qty = 18 },
            { name = "Glacier Remnant", qty = 9 },
            { name = "Battle Shard", qty = 17 },
            { name = "Frost Relic", qty = 265 },
        }
    },
    {
        name = "Kokushibo",
        items = {
            { name = "Lunar Essence", qty = 9 },
            { name = "Demon Remnant", qty = 16 },
            { name = "Crescent Shard", qty = 14 },
            { name = "Moon Crest", qty = 3 },
            { name = "Upper Seal", qty = 265 },
        }
    },
    {
        name = "Gilgamesh",
        items = {
            { name = "Throne Remnant", qty = 12 },
            { name = "Ancient Shard", qty = 6 },
            { name = "Golden Essence", qty = 8 },
            { name = "Phantasm Core", qty = 3 },
            { name = "Race Reroll", qty = 100 },
            { name = "Divine Grail", qty = 125 },
            { name = "Broken Sword", qty = 100 },
        }
    },
    {
        name = "Anos",
        items = {
            { name = "Calamity Seal", qty = 65 },
            { name = "Demonic Fragment", qty = 12 },
            { name = "Demonic Shard", qty = 6 },
            { name = "Destruction Eye", qty = 2 },
            { name = "Imperial Mark", qty = 1 },
            { name = "Clan Reroll", qty = 100 },
        }
    },
    {
        name = "Aizen V2",
        items = {
            { name = "Evolution Fragment", qty = 1 },
            { name = "Transcendent Core", qty = 3 },
            { name = "Divinity Essence", qty = 8 },
            { name = "Fusion Ring", qty = 15 },
            { name = "Chrysalis Sigil", qty = 220 },
            { name = "Transmutation Shard", qty = 6 },
            { name = "Clan Reroll", qty = 100 },
        }
    },
    {
        name = "Shadow",
        items = {
            { name = "Atomic Core", qty = 1 },
            { name = "Shadow Essence", qty = 4 },
            { name = "Void Seed", qty = 8 },
            { name = "Umbral Capsule", qty = 20 },
            { name = "Clan Reroll", qty = 100 },
        }
    },
    {
        name = "Atomic",
        items = {
            { name = "Atomic Omen", qty = 1 },
            { name = "Eminence Essence", qty = 3 },
            { name = "Shadow Remnant", qty = 9 },
            { name = "Magic Shard", qty = 16 },
            { name = "Abyss Sigil", qty = 250 },
            { name = "Clan Reroll", qty = 50 },
        }
    },
    {
        name = "Aizen V1",
        items = {
            { name = "Hōgyoku Fragment", qty = 1 },
            { name = "Reiatsu Core", qty = 3 },
            { name = "Illusion Prism", qty = 6 },
            { name = "Mirage Pendant", qty = 10 },
        }
    },
    {
        name = "Yamato",
        items = {
            { name = "Azure Heart", qty = 1 },
            { name = "Silent Storm", qty = 3 },
            { name = "Yamato Essence", qty = 7 },
            { name = "Frozen Will", qty = 14 },
        }
    },
    {
        name = "Gojo V2",
        items = {
            { name = "Six Eye", qty = 6 },
            { name = "Reversal Pulse", qty = 9 },
            { name = "Blue Singularity", qty = 3 },
            { name = "Infinity Essence", qty = 1 },
			{ name = "Energy Shard", qty = 6 },
			{ name = "Cursed Flesh", qty = 2 },
        }
    },
    {
        name = "Sukuna V2",
        items = {
            { name = "Malevolent Soul", qty = 3 },
            { name = "Cursed Flesh", qty = 1 },
            { name = "Vessel Ring", qty = 7 },
            { name = "Awakened Cursed Finger", qty = 20 },
			{ name = "Cursed Talisman", qty = 6 },
			{ name = "Infinity Essence", qty = 2 },
        }
    },
    {
        name = "Asenced",
        items = {
            { name = "Void Fragment", qty = 5 },
            { name = "Limitless Ring", qty = 2 },
            { name = "Dismantle Fang", qty = 7 },
            { name = "Dark Ring", qty = 5 },
            { name = "Reiatsu Core", qty = 4 },
            { name = "Blood Ring", qty = 1 },
            { name = "Atomic Core", qty = 2 },
            { name = "Blood Ring", qty = 3 },
            { name = "Soul Flame", qty = 3 },
            { name = "Cursed Flesh", qty = 2 },
            { name = "Infinity Essence", qty = 2 },
            { name = "Phantasm Core", qty = 2 },
            { name = "Slime Core", qty = 3 },
            { name = "Azure Heart", qty = 2 },
            { name = "Evolution Fragment", qty = 2 },
            { name = "Path Fragment", qty = 2 },
            { name = "Corrupt Crown", qty = 3 },
            { name = "Hōgyoku Fragment", qty = 2 },
        }
    },
    {
        name = "Asc 2",
        items = {
            { name = "Void Fragment", qty = 5 },
            { name = "Limitless Ring", qty = 2 },
        }
    },
    {
        name = "Asc 3",
        items = {
            { name = "Dismantle Fang", qty = 7 },
            { name = "Dark Ring", qty = 5 },
        }
    },
    {
        name = "Asc 4",
        items = {
            { name = "Reiatsu Core", qty = 4 },
            { name = "Blood Ring", qty = 1 },
        }
    },
    {
        name = "Asc 5",
        items = {
            { name = "Hōgyoku Fragment", qty = 2 },
            { name = "Atomic Core", qty = 2 },
        }
    },
    {
        name = "Asc 6",
        items = {
            { name = "Blood Ring", qty = 3 },
            { name = "Soul Flame", qty = 3 },
        }
    },
    {
        name = "Asc 7",
        items = {
            { name = "Cursed Flesh", qty = 2 },
            { name = "Infinity Essence", qty = 2 },
        }
    },
    {
        name = "Asc 8",
        items = {
            { name = "Phantasm Core", qty = 2 },
            { name = "Slime Core", qty = 3 },
        }
    },
    {
        name = "Asc 9",
        items = {
            { name = "Azure Heart", qty = 2 },
            { name = "Evolution Fragment", qty = 2 },
        }
    },
    {
        name = "Asc 10",
        items = {
            { name = "Path Fragment", qty = 2 },
            { name = "Corrupt Crown", qty = 3 },
        }
    },
    {
        name = "Garou",
        items = {
            { name = "Cosmic Essence", qty = 12 },
            { name = "Star Mark", qty = 8 },
            { name = "Galaxy Shard", qty = 5 },
            { name = "Monster Pulse", qty = 2 },
        }
    },
    {
        name = "Dio",
        items = {
            { name = "Dominion Brand", qty = 240 },
            { name = "Power Fragment", qty = 20 },
            { name = "Time Remnant", qty = 12 },
            { name = "World Core", qty = 6 },
            { name = "Vampire Omen", qty = 2 },
            { name = "Bloodline Stone", qty = 100 },
        }
    },
    {
        name = "Freiren",
        items = {
            { name = "Easter Egg", qty = 500 },
            { name = "Spell Echo", qty = 18 },
            { name = "Ancient Fragment", qty = 10 },
            { name = "Magic Essence", qty = 5 },
            { name = "Easter Key", qty = 160 },
        }
    },
    {
        name = "Saber",
        items = {
            { name = "Corrupt Crown", qty = 1 },
            { name = "Corruption Core", qty = 12 },
            { name = "Alter Essence", qty = 8 },
            { name = "Morgan Remnant", qty = 15 },
            { name = "Dark Grail", qty = 310 },
            { name = "Clan Reroll", qty = 300 },
        }
    },
    {
        name = "Crit Damage Relic",
        items = {
            { name = "Relic Part #3", qty = 25 },
            { name = "Relic Part #4", qty = 20 },
        }
    },
    {
        name = "Crit Relic",
        items = {
            { name = "Relic Part #1", qty = 20 },
            { name = "Relic Part #2", qty = 15 },
        }
    },
    {
        name = "Damage Relic",
        items = {
            { name = "Relic Part #7", qty = 40 },
            { name = "Relic Part #8", qty = 30 },
            { name = "Relic Part #1", qty = 50 },
            { name = "Relic Part #3", qty = 50 },
        }
    },
    {
        name = "Luck Relic",
        items = {
            { name = "Relic Part #5", qty = 30 },
            { name = "Relic Part #6", qty = 25 },
        }
    },
}

local QUICK_TRADE_UI = {
    hideKey = nil, -- contoh: Enum.KeyCode.RightControl / Enum.KeyCode.F4, nil = nonaktif
    hiddenButtonText = "QT",
    hiddenButtonPosition = UDim2.new(0, 10, 0.3, 0),
}

if getgenv().QuickTradeCleanup then
    pcall(getgenv().QuickTradeCleanup)
end

local SESSION_ID = tostring(math.random(100000000, 999999999))
getgenv().QuickTradeActive = true
getgenv().QuickTradeSession = SESSION_ID

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function isActuallyVisible(obj)
    if not obj then return false end
    local ok, res = pcall(function()
        if not (obj:IsA("GuiObject") and obj.Visible) then return false end
        if obj.AbsoluteSize.X <= 0 or obj.AbsoluteSize.Y <= 0 then return false end

        local parent = obj.Parent
        while parent do
            if parent:IsA("GuiObject") and not parent.Visible then
                return false
            end
            if parent:IsA("ScreenGui") and not parent.Enabled then
                return false
            end
            parent = parent.Parent
        end

        if obj.AbsolutePosition.X < -5000 or obj.AbsolutePosition.Y < -5000 then
            return false
        end

        return true
    end)
    return ok and res == true
end

local function clickButton(btn)
    if not btn or not btn.Parent then return false end

    pcall(function()
        if type(getconnections) ~= "function" then return end
        for _, c in pairs(getconnections(btn.InputBegan)) do
            pcall(function()
                c:Fire({
                    UserInputType = Enum.UserInputType.MouseButton1,
                    UserInputState = Enum.UserInputState.Begin
                })
            end)
        end
        task.wait(0.05)
        for _, c in pairs(getconnections(btn.InputEnded)) do
            pcall(function()
                c:Fire({
                    UserInputType = Enum.UserInputType.MouseButton1,
                    UserInputState = Enum.UserInputState.End
                })
            end)
        end
        for _, c in pairs(getconnections(btn.MouseButton1Down)) do pcall(function() c:Fire() end) end
        for _, c in pairs(getconnections(btn.MouseButton1Up)) do pcall(function() c:Fire() end) end
        for _, c in pairs(getconnections(btn.MouseButton1Click)) do pcall(function() c:Fire() end) end
        for _, c in pairs(getconnections(btn.Activated)) do pcall(function() c:Fire() end) end
    end)

    pcall(function()
        if type(firesignal) ~= "function" then return end
        firesignal(btn.MouseButton1Click, Vector2.new(0, 0))
        firesignal(btn.Activated)
    end)

    pcall(function()
        btn:Activate()
    end)

    pcall(function()
        local vim = game:GetService("VirtualInputManager")
        local inset = game:GetService("GuiService"):GetGuiInset()
        local p, s = btn.AbsolutePosition, btn.AbsoluteSize
        local cx, cy = p.X + s.X / 2, p.Y + s.Y / 2 + inset.Y
        vim:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
        task.wait(0.05)
        vim:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
    end)

    return true
end

local function clickTradeItemButton(btn, mode)
    if not btn or not btn.Parent then return false end

    mode = mode or "vim"

    if mode == "vim" then
        return pcall(function()
            local vim = game:GetService("VirtualInputManager")
            local inset = game:GetService("GuiService"):GetGuiInset()
            local p, s = btn.AbsolutePosition, btn.AbsoluteSize
            local cx, cy = p.X + s.X / 2, p.Y + s.Y / 2 + inset.Y
            vim:SendMouseMoveEvent(cx, cy, game)
            task.wait(0.03)
            vim:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
            task.wait(0.06)
            vim:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
        end)
    end

    if mode == "signal_click" then
        return pcall(function()
            if type(firesignal) ~= "function" then
                error("firesignal unavailable")
            end
            firesignal(btn.MouseButton1Click, Vector2.new(0, 0))
        end)
    end

    if mode == "signal_activated" then
        return pcall(function()
            if type(firesignal) ~= "function" then
                error("firesignal unavailable")
            end
            firesignal(btn.Activated)
        end)
    end

    if mode == "activate" then
        return pcall(function()
            btn:Activate()
        end)
    end

    return pcall(function()
        if type(firesignal) ~= "function" then return end
        firesignal(btn.MouseButton1Click, Vector2.new(0, 0))
        firesignal(btn.Activated)
    end)
end

local function getButtonText(btn)
    if not btn then return "" end
    if btn:IsA("TextButton") then return btn.Text or "" end
    local lbl = btn:FindFirstChildWhichIsA("TextLabel")
    if lbl then return lbl.Text or "" end
    return ""
end

local function findTradeUI()
    local directNames = { "InTradingUI", "TradingUI", "TradeUI", "TradeWindow", "TradeFrame", "InTrade" }

    for _, name in ipairs(directNames) do
        local ui = PlayerGui:FindFirstChild(name, true)
        if ui and isActuallyVisible(ui) then
            return ui
        end
    end

    for _, gui in ipairs(PlayerGui:GetChildren()) do
        if gui:IsA("ScreenGui") and gui.Name ~= "QuickTradeGui" then
            local hasAdd = gui:FindFirstChild("AddToTrade", true)
            local hasPopup = gui:FindFirstChild("InventoryPopup", true)
            local hasScroll = gui:FindFirstChildWhichIsA("ScrollingFrame", true)
            if hasAdd or hasPopup or (hasScroll and gui.Name:lower():find("trad", 1, true)) then
                return gui
            end
        end
    end

    for _, desc in ipairs(PlayerGui:GetDescendants()) do
        if (desc:IsA("Frame") or desc:IsA("ScreenGui"))
        and isActuallyVisible(desc)
        and not desc:FindFirstAncestor("QuickTradeGui") then
            local hasAdd = desc:FindFirstChild("AddToTrade", true)
            local hasPopup = desc:FindFirstChild("InventoryPopup", true)
            local hasScroll = desc:FindFirstChildWhichIsA("ScrollingFrame", true)
            if hasAdd or hasPopup or hasScroll then
                return desc
            end
        end
    end

    return nil
end

local function findInventoryPopup(tradeUI)
    if not tradeUI then return nil end

    local popup = tradeUI:FindFirstChild("InventoryPopup", true)
    if popup then return popup end

    for _, desc in ipairs(tradeUI:GetDescendants()) do
        if (desc:IsA("Frame") or desc:IsA("ScrollingFrame")) and isActuallyVisible(desc) then
            local hasScroll = desc:FindFirstChildWhichIsA("ScrollingFrame", true)
            local hasTextBox = desc:FindFirstChildWhichIsA("TextBox", true)
            if hasScroll and hasTextBox then
                return desc
            end
        end
    end

    return nil
end

local function acquireTradeRefs(popup)
    local invList, searchBox, qtyTextBox = nil, nil, nil
    if not popup then return nil, nil, nil end

    pcall(function()
        local content = popup:FindFirstChild("Content")
        if content then invList = content:FindFirstChild("Inventory") end
        if not invList then invList = popup:FindFirstChildWhichIsA("ScrollingFrame", true) end
    end)

    if not invList then
        pcall(function()
            for _, desc in ipairs(popup:GetDescendants()) do
                if desc:IsA("ScrollingFrame") and isActuallyVisible(desc) then
                    invList = desc
                    break
                end
            end
        end)
    end

    -- Cari searchBox (pcall terpisah supaya error di sini tidak membunuh pencarian qtyTextBox)
    pcall(function()
        local searchBoxNode = popup:FindFirstChild("Search", true)
        if searchBoxNode then
            if searchBoxNode:IsA("TextBox") then
                searchBox = searchBoxNode
            else
                searchBox = searchBoxNode:FindFirstChildWhichIsA("TextBox", true)
            end
        end

        if not searchBox then
            for _, desc in ipairs(popup:GetDescendants()) do
                if desc:IsA("TextBox") then
                    local pText = (desc.PlaceholderText or ""):lower()
                    local nText = desc.Name:lower()
                    if pText:find("search", 1, true) or nText:find("search", 1, true) then
                        searchBox = desc
                        break
                    end
                end
            end
        end
    end)

    -- Cari qtyTextBox (pcall terpisah)
    pcall(function()
        -- Coba nama "Quantity" dulu
        local qtyBoxNode = popup:FindFirstChild("Quantity", true)
        if qtyBoxNode then
            if qtyBoxNode:IsA("TextBox") then
                qtyTextBox = qtyBoxNode
            else
                qtyTextBox = qtyBoxNode:FindFirstChildWhichIsA("TextBox", true)
            end
        end
    end)

    -- Kalau masih nil, cari TextBox apapun yang bukan searchBox (persis logic trade_input_test.lua)
    if not qtyTextBox then
        pcall(function()
            for _, desc in ipairs(popup:GetDescendants()) do
                if desc:IsA("TextBox") and desc ~= searchBox then
                    local n = desc.Name:lower()
                    if not n:find("search", 1, true) then
                        qtyTextBox = desc
                        break
                    end
                end
            end
        end)
    end

    return invList, searchBox, qtyTextBox
end

local function findItemButton(invList, itemName)
    if not invList or not itemName then return nil end
    local nameLow = itemName:lower()
    local nameNoSp = nameLow:gsub("%s+", "")
    local exactBtn = nil
    local fallbackBtn = nil

    local function isInsideViewport(obj, viewport)
        if not obj or not viewport then return false end
        local ok, res = pcall(function()
            local objCenterX = obj.AbsolutePosition.X + (obj.AbsoluteSize.X / 2)
            local objCenterY = obj.AbsolutePosition.Y + (obj.AbsoluteSize.Y / 2)
            local minX = viewport.AbsolutePosition.X
            local minY = viewport.AbsolutePosition.Y
            local maxX = minX + viewport.AbsoluteSize.X
            local maxY = minY + viewport.AbsoluteSize.Y
            return objCenterX >= minX and objCenterX <= maxX and objCenterY >= minY and objCenterY <= maxY
        end)
        return ok and res == true
    end

    for _, ch in ipairs(invList:GetDescendants()) do
        if ch:IsA("GuiButton") and isActuallyVisible(ch) and isInsideViewport(ch, invList) then
            local chLow = ch.Name:lower()
            local chNoSp = chLow:gsub("%s+", "")
            if chLow == nameLow or chNoSp == nameNoSp then
                if not chLow:find("(untradeable)", 1, true) then
                    exactBtn = ch
                    break
                elseif not fallbackBtn then
                    fallbackBtn = ch
                end
            end
        end
    end

    return exactBtn or fallbackBtn
end

local function findAnyItemButton(invList, itemName)
    if not invList or not itemName then return nil end
    local nameLow = itemName:lower()
    local nameNoSp = nameLow:gsub("%s+", "")
    local exactBtn = nil
    local fallbackBtn = nil

    for _, ch in ipairs(invList:GetDescendants()) do
        if ch:IsA("GuiButton") then
            local chLow = ch.Name:lower()
            local chNoSp = chLow:gsub("%s+", "")
            if chLow == nameLow or chNoSp == nameNoSp then
                if not chLow:find("(untradeable)", 1, true) then
                    exactBtn = ch
                    break
                elseif not fallbackBtn then
                    fallbackBtn = ch
                end
            end
        end
    end

    return exactBtn or fallbackBtn
end

local function scrollItemIntoView(invList, itemBtn)
    if not invList or not itemBtn then return false end
    local ok = pcall(function()
        local targetY = itemBtn.AbsolutePosition.Y - invList.AbsolutePosition.Y + invList.CanvasPosition.Y - 12
        invList.CanvasPosition = Vector2.new(0, math.max(0, targetY))
    end)
    if ok then
        task.wait(0.45)
    end
    return ok
end

local function fireFocusLost(textBox, submitted)
    if not textBox then return end
    submitted = submitted == true
    pcall(function()
        textBox:ReleaseFocus(submitted)
    end)
    pcall(function()
        if type(firesignal) == "function" then
            firesignal(textBox.FocusLost, submitted)
        end
    end)
end

local function usesPrefixedQuantity(textBox)
    if not textBox then return false end
    local currentText = tostring(textBox.Text or "")
    if currentText:match("^%s*[xX]") then
        return true
    end
    return false
end

local function formatQuantityText(textBox, qty)
    local value = tostring(math.max(1, math.floor(tonumber(qty) or 1)))
    if usesPrefixedQuantity(textBox) then
        return "x" .. value
    end
    return value
end

local function normalizeQuantityText(value)
    local digits = tostring(value or ""):match("(%d+)")
    if not digits then
        return ""
    end
    return digits
end

-- Set text ke TextBox — IDENTIK dengan setTextBox dari trade_input_test.lua yang sudah proven works
local VIM_SERVICE = game:GetService("VirtualInputManager")

local function setTradeTextBoxValue(textBox, desiredText, mode)
    if not textBox then
        return false, ""
    end

    local expected = mode == "qty"
        and normalizeQuantityText(desiredText)
        or tostring(desiredText or "")

    -- 1. Focus
    textBox:CaptureFocus()
    task.wait(0.03)

    -- 2. Set text langsung
    textBox.Text = tostring(desiredText or "")
    textBox.CursorPosition = #tostring(desiredText or "") + 1
    task.wait(0.02)

    -- 3. Fire signal
    pcall(function()
        if type(firesignal) == "function" then
            firesignal(textBox:GetPropertyChangedSignal("Text"))
        end
    end)
    task.wait(0.02)

    -- 4. Tekan Enter
    VIM_SERVICE:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.015)
    VIM_SERVICE:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    task.wait(0.02)

    -- 5. Release focus
    textBox:ReleaseFocus(true)
    pcall(function()
        if type(firesignal) == "function" then
            firesignal(textBox.FocusLost, true)
        end
    end)
    task.wait(mode == "qty" and 0.08 or 0.06)

    local currentValue = tostring(textBox.Text or "")
    local currentNormalized = mode == "qty"
        and normalizeQuantityText(currentValue)
        or currentValue

    if currentNormalized == expected then
        return true, currentValue
    end

    return false, currentValue
end

local function findAddToTradeButton(tradeUI)
    if not tradeUI then return nil end

    local addBtn = tradeUI:FindFirstChild("AddToTrade", true)
    if addBtn and isActuallyVisible(addBtn) then
        return addBtn
    end

    for _, desc in ipairs(tradeUI:GetDescendants()) do
        if (desc:IsA("TextButton") or desc:IsA("ImageButton")) and isActuallyVisible(desc) then
            local t = getButtonText(desc):lower()
            local n = desc.Name:lower()
            if t == "+" or t == "add" or n == "addtotrade" or n == "add" or n == "additem" then
                return desc
            end
        end
    end

    return nil
end

local updatePutButton
local putProgress = { current = 0, total = 0 }

local function putSelectedItems(selectedItems)
    local function findTradeOfferContainer(tradeUI)
        if not tradeUI then return nil end

        local holder = tradeUI:FindFirstChild("Player1Items", true)
        if holder and isActuallyVisible(holder) then
            return holder
        end

        local addBtn = findAddToTradeButton(tradeUI)
        if addBtn and addBtn.Parent then
            return addBtn.Parent
        end

        return nil
    end

    local function countOfferedTradeItems(container)
        if not container then return 0 end
        local count = 0
        for _, desc in ipairs(container:GetDescendants()) do
            if desc:IsA("GuiButton") and isActuallyVisible(desc) and desc.Name ~= "AddToTrade" then
                count = count + 1
            end
        end
        return count
    end

    local function acquireTradeUIRefs(currentTradeUI, currentPopup, currentInvList, currentSearchBox, currentQtyTextBox)
        local tradeUI = currentTradeUI
        if not tradeUI or not tradeUI.Parent or not isActuallyVisible(tradeUI) then
            tradeUI = findTradeUI()
        end

        local popup = currentPopup
        if not popup or not popup.Parent or not isActuallyVisible(popup) then
            popup = findInventoryPopup(tradeUI)
        end

        local popupChanged = popup ~= currentPopup
        local invList = currentInvList
        local searchBox = currentSearchBox
        local qtyTextBox = currentQtyTextBox

        local invListValid = false
        pcall(function()
            invListValid = invList ~= nil and invList.Parent ~= nil
        end)

        local searchValid = false
        pcall(function()
            searchValid = searchBox ~= nil and searchBox.Parent ~= nil
        end)

        local qtyValid = false
        pcall(function()
            qtyValid = qtyTextBox ~= nil and qtyTextBox.Parent ~= nil
        end)

        if popupChanged or not invListValid or not searchValid or not qtyValid then
            invList, searchBox, qtyTextBox = acquireTradeRefs(popup)
        end

        if tradeUI and (not invList or not invList.Parent) then
            pcall(function()
                for _, desc in ipairs(tradeUI:GetDescendants()) do
                    if desc:IsA("ScrollingFrame") and isActuallyVisible(desc) then
                        local hasItems = false
                        for _, ch in ipairs(desc:GetDescendants()) do
                            if ch:IsA("GuiButton") and isActuallyVisible(ch) then
                                hasItems = true
                                break
                            end
                        end
                        if hasItems then
                            invList = desc
                            break
                        end
                    end
                end
            end)
        end

        if popup and (not searchBox or not searchBox.Parent or not qtyTextBox or not qtyTextBox.Parent) then
            local reacquiredInvList, reacquiredSearchBox, reacquiredQtyTextBox = acquireTradeRefs(popup)
            invList = reacquiredInvList or invList
            searchBox = reacquiredSearchBox or searchBox
            qtyTextBox = reacquiredQtyTextBox or qtyTextBox
        end

        if invList and invList ~= currentInvList then
            local prev, stableFor, waited = -1, 0, 0
            while waited < 6 do
                local cur = #invList:GetDescendants()
                if cur == prev then
                    stableFor = stableFor + 0.3
                    if stableFor >= 0.6 then break end
                else
                    stableFor = 0
                    prev = cur
                end
                task.wait(0.3)
                waited = waited + 0.3
            end
        end

        return tradeUI, popup, invList, searchBox, qtyTextBox
    end



    -- AUTO CLEAR: hapus semua item yang sudah ada di trade offer sebelum put baru
    print("[PUT] Auto-clearing trade offer...")
    pcall(function()
        local tradeUI = PlayerGui:FindFirstChild("InTradingUI", true)
        if tradeUI then
            -- Cari container offer Player1
            local offerContainer = findTradeOfferContainer(tradeUI)
            if offerContainer then
                -- Klik semua tombol remove/X di offer container
                local removeButtons = {}
                for _, desc in ipairs(offerContainer:GetDescendants()) do
                    if desc:IsA("GuiButton") and isActuallyVisible(desc) then
                        local n = desc.Name:lower()
                        if n:find("remove", 1, true) or n:find("delete", 1, true) or n:find("close", 1, true) or n == "x" then
                            table.insert(removeButtons, desc)
                        end
                    end
                end
                for _, btn in ipairs(removeButtons) do
                    local inset = game:GetService("GuiService"):GetGuiInset()
                    local p, s = btn.AbsolutePosition, btn.AbsoluteSize
                    local cx, cy = p.X + s.X / 2, p.Y + s.Y / 2 + inset.Y
                    VIM_SERVICE:SendMouseMoveEvent(cx, cy, game)
                    task.wait(0.03)
                    VIM_SERVICE:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
                    task.wait(0.05)
                    VIM_SERVICE:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
                    task.wait(0.15)
                end
                if #removeButtons > 0 then
                    print("[PUT] Cleared " .. #removeButtons .. " items from trade offer")
                end
            end

            -- Juga clear search box dan reset qty kalau popup terbuka
            local popup = tradeUI:FindFirstChild("InventoryPopup", true)
            if popup then
                local searchNode = popup:FindFirstChild("Search", true)
                if searchNode then
                    local sb = searchNode:IsA("TextBox") and searchNode or searchNode:FindFirstChildWhichIsA("TextBox", true)
                    if sb then
                        setTradeTextBoxValue(sb, "", "text")
                    end
                end
            end
        end
    end)
    task.wait(0.3)
    print("[PUT] Auto-clear selesai.")
    for index, item in ipairs(selectedItems) do
        putProgress.current = index
        if updatePutButton then updatePutButton() end

        print("[PUT] === Item " .. index .. ": " .. item.name .. " x" .. tostring(item.qty) .. " ===")

        -- LANGSUNG cari elemen UI persis seperti trade_input_test.lua (bypass acquireTradeRefs)
        local tradeUI = PlayerGui:FindFirstChild("InTradingUI", true)
        if not tradeUI then
            warn("[PUT] InTradingUI tidak ketemu.")
            return
        end

        local popup = tradeUI:FindFirstChild("InventoryPopup", true)
        if not popup then
            -- Coba buka popup dulu
            local addBtn = findAddToTradeButton(tradeUI)
            if addBtn then
                clickButton(addBtn)
                task.wait(0.5)
                popup = tradeUI:FindFirstChild("InventoryPopup", true)
            end
        end
        if not popup then
            warn("[PUT] InventoryPopup tidak ketemu.")
            print("[PUT] GAGAL: " .. item.name)
            continue
        end

        -- Cari inventory (persis trade_input_test.lua)
        local inventory = popup:FindFirstChild("Inventory", true)
        if not inventory then
            inventory = popup:FindFirstChildWhichIsA("ScrollingFrame", true)
        end
        if not inventory then
            warn("[PUT] Inventory tidak ketemu.")
            print("[PUT] GAGAL: " .. item.name)
            continue
        end

        -- Cari searchBox (persis trade_input_test.lua)
        local searchBox = nil
        local searchNode = popup:FindFirstChild("Search", true)
        if searchNode then
            if searchNode:IsA("TextBox") then
                searchBox = searchNode
            else
                searchBox = searchNode:FindFirstChildWhichIsA("TextBox", true)
            end
        end
        if not searchBox then
            for _, desc in ipairs(popup:GetDescendants()) do
                if desc:IsA("TextBox") then
                    local n = desc.Name:lower()
                    local pt = (desc.PlaceholderText or ""):lower()
                    if n:find("search", 1, true) or pt:find("search", 1, true) then
                        searchBox = desc
                        break
                    end
                end
            end
        end

        -- Cari qtyTextBox (persis trade_input_test.lua)
        local qtyTextBox = nil
        if searchBox then
            for _, desc in ipairs(popup:GetDescendants()) do
                if desc:IsA("TextBox") and desc ~= searchBox then
                    local n = desc.Name:lower()
                    if not n:find("search", 1, true) then
                        qtyTextBox = desc
                        break
                    end
                end
            end
        end

        print("[PUT] searchBox=" .. tostring(searchBox ~= nil) .. " qtyTextBox=" .. tostring(qtyTextBox ~= nil) .. " inventory=" .. tostring(inventory ~= nil))

        if not searchBox then
            warn("[PUT] SearchBox tidak ketemu!")
            print("[PUT] GAGAL: " .. item.name)
            continue
        end

        -- STEP 1: Search item (persis trade_input_test.lua)
        print("[PUT] STEP 1: Search '" .. item.name .. "'")
        local searchResult = setTradeTextBoxValue(searchBox, item.name, "text")
        print("[PUT] Search result: " .. tostring(searchResult))

        -- Tunggu inventory ter-filter
        task.wait(0.35)

        -- STEP 2: Set qty (persis trade_input_test.lua)
        if qtyTextBox then
            local usesXPrefix = (qtyTextBox.Text or ""):match("^%s*[xX]") ~= nil
            local qtyText = usesXPrefix and ("x" .. tostring(item.qty)) or tostring(item.qty)
            print("[PUT] STEP 2: Set qty = '" .. qtyText .. "'")
            setTradeTextBoxValue(qtyTextBox, qtyText, "qty")
            task.wait(0.08)
        else
            warn("[PUT] qtyTextBox nil, skip qty setting")
        end

        -- STEP 3: Cari item button (persis trade_input_test.lua)
        print("[PUT] STEP 3: Cari item '" .. item.name .. "'")
        local itemBtn = nil
        local nameLow = item.name:lower()
        local nameNoSp = nameLow:gsub("%s+", "")

        local deadline = os.clock() + 1.4
        while os.clock() < deadline do
            for _, desc in ipairs(inventory:GetDescendants()) do
                if desc:IsA("GuiButton") and isActuallyVisible(desc) then
                    local chLow = desc.Name:lower()
                    local chNoSp = chLow:gsub("%s+", "")
                    if (chLow == nameLow or chNoSp == nameNoSp) and not chLow:find("(untradeable)", 1, true) then
                        itemBtn = desc
                        break
                    end
                end
            end
            if itemBtn then break end
            task.wait(0.08)
        end

        if not itemBtn then
            warn("[PUT] Item tidak ditemukan: " .. item.name)
            print("[PUT] Item yang visible:")
            local visCount = 0
            for _, desc in ipairs(inventory:GetDescendants()) do
                if desc:IsA("GuiButton") and isActuallyVisible(desc) then
                    visCount = visCount + 1
                    print("[PUT]   " .. visCount .. ". " .. desc.Name)
                    if visCount >= 10 then break end
                end
            end
            print("[PUT] GAGAL: " .. item.name)
        else
            -- STEP 4: Klik item (persis trade_input_test.lua)
            print("[PUT] STEP 4: Klik item '" .. itemBtn.Name .. "'")
            task.wait(0.04)
            local inset = game:GetService("GuiService"):GetGuiInset()
            local p, s = itemBtn.AbsolutePosition, itemBtn.AbsoluteSize
            local cx, cy = p.X + s.X / 2, p.Y + s.Y / 2 + inset.Y
            VIM_SERVICE:SendMouseMoveEvent(cx, cy, game)
            task.wait(0.025)
            VIM_SERVICE:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
            task.wait(0.045)
            VIM_SERVICE:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
            task.wait(0.16)
        end

        task.wait(0.06)
    end
end

local THEME = {
    bg = Color3.fromRGB(23, 17, 35),
    bgDeep = Color3.fromRGB(17, 12, 27),
    panel = Color3.fromRGB(39, 31, 58),
    panelSoft = Color3.fromRGB(49, 40, 72),
    panelInset = Color3.fromRGB(30, 24, 46),
    row = Color3.fromRGB(45, 37, 64),
    rowSelected = Color3.fromRGB(75, 58, 112),
    violet = Color3.fromRGB(134, 103, 255),
    violetSoft = Color3.fromRGB(98, 77, 181),
    gold = Color3.fromRGB(225, 185, 115),
    goldSoft = Color3.fromRGB(146, 111, 62),
    text = Color3.fromRGB(247, 242, 255),
    textSoft = Color3.fromRGB(194, 182, 223),
    textMuted = Color3.fromRGB(149, 137, 177),
    success = Color3.fromRGB(65, 173, 102),
    successDark = Color3.fromRGB(38, 90, 61),
    danger = Color3.fromRGB(152, 73, 90),
    dangerDark = Color3.fromRGB(85, 40, 52),
    disabled = Color3.fromRGB(66, 58, 85),
    confirm = Color3.fromRGB(187, 145, 48),
}

local function attachStroke(obj, color, thickness, transparency)
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Color = color
    stroke.Thickness = thickness or 1
    stroke.Transparency = transparency or 0
    stroke.Parent = obj
    return stroke
end

local function attachGradient(obj, topColor, bottomColor, rotation)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(topColor, bottomColor)
    gradient.Rotation = rotation or 90
    gradient.Parent = obj
    return gradient
end

local oldGui = PlayerGui:FindFirstChild("QuickTradeGui")
if oldGui then
    pcall(function() oldGui:Destroy() end)
end

local gui = Instance.new("ScreenGui")
gui.Name = "QuickTradeGui"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 200, 0, 300)
mainFrame.Position = UDim2.new(0, 10, 0.3, 0)
mainFrame.BackgroundColor3 = THEME.bg
mainFrame.BackgroundTransparency = 0.08
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame
attachStroke(mainFrame, THEME.goldSoft, 1.2, 0.25)
attachGradient(mainFrame, THEME.panel, THEME.bgDeep)

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 36)
titleBar.BackgroundColor3 = THEME.panel
titleBar.BorderSizePixel = 0
titleBar.Active = true
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = titleBar
attachGradient(titleBar, THEME.violetSoft, THEME.panel)

local titlePatch = Instance.new("Frame")
titlePatch.Size = UDim2.new(1, 0, 0, 12)
titlePatch.Position = UDim2.new(0, 0, 1, -12)
titlePatch.BackgroundColor3 = THEME.panel
titlePatch.BorderSizePixel = 0
titlePatch.Parent = titleBar

local titleTrim = Instance.new("Frame")
titleTrim.Name = "TitleTrim"
titleTrim.Size = UDim2.new(1, -12, 0, 2)
titleTrim.Position = UDim2.new(0, 6, 1, -3)
titleTrim.BackgroundColor3 = THEME.gold
titleTrim.BackgroundTransparency = 0.18
titleTrim.BorderSizePixel = 0
titleTrim.Parent = titleBar

local title = Instance.new("TextLabel")
title.Name = "Title"
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, -92, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.Font = Enum.Font.GothamBold
title.Text = "✦ Quick Trade"
title.TextColor3 = THEME.text
title.TextSize = 15
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextStrokeColor3 = THEME.goldSoft
title.TextStrokeTransparency = 0.82
title.Parent = titleBar

local toggleBtn = Instance.new("TextButton")
toggleBtn.Name = "ToggleBtn"
toggleBtn.Size = UDim2.new(0, 46, 0, 24)
toggleBtn.Position = UDim2.new(1, -52, 0.5, -12)
toggleBtn.BackgroundColor3 = THEME.success
toggleBtn.BorderSizePixel = 0
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.Text = "ON"
toggleBtn.TextColor3 = THEME.text
toggleBtn.TextSize = 14
toggleBtn.Parent = titleBar

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleBtn
attachStroke(toggleBtn, THEME.goldSoft, 1, 0.45)

local hideBtn = Instance.new("TextButton")
hideBtn.Name = "HideBtn"
hideBtn.Size = UDim2.new(0, 24, 0, 24)
hideBtn.Position = UDim2.new(1, -82, 0.5, -12)
hideBtn.BackgroundColor3 = THEME.dangerDark
hideBtn.BorderSizePixel = 0
hideBtn.Font = Enum.Font.GothamBold
hideBtn.Text = "✕"
hideBtn.TextColor3 = THEME.text
hideBtn.TextSize = 14
hideBtn.Parent = titleBar

local hideCorner = Instance.new("UICorner")
hideCorner.CornerRadius = UDim.new(0, 6)
hideCorner.Parent = hideBtn
attachStroke(hideBtn, THEME.goldSoft, 1, 0.55)

local searchBox = Instance.new("TextBox")
searchBox.Name = "SearchBox"
searchBox.Size = UDim2.new(1, -12, 0, 30)
searchBox.Position = UDim2.new(0, 6, 0, 42)
searchBox.BackgroundColor3 = THEME.panelInset
searchBox.BorderSizePixel = 0
searchBox.ClearTextOnFocus = false
searchBox.Font = Enum.Font.Gotham
searchBox.PlaceholderText = "🔍 Cari preset..."
searchBox.PlaceholderColor3 = THEME.textSoft
searchBox.Text = ""
searchBox.TextColor3 = THEME.text
searchBox.TextSize = 13
searchBox.Parent = mainFrame

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 6)
searchCorner.Parent = searchBox
attachStroke(searchBox, THEME.violet, 1, 0.18)

local allButton = Instance.new("TextButton")
allButton.Name = "AllButton"
allButton.Size = UDim2.new(0, 55, 0, 22)
allButton.Position = UDim2.new(0, 6, 0, 76)
allButton.BackgroundColor3 = THEME.panelSoft
allButton.BorderSizePixel = 0
allButton.Font = Enum.Font.GothamBold
allButton.Text = "All"
allButton.TextColor3 = THEME.text
allButton.TextSize = 12
allButton.Parent = mainFrame

local allCorner = Instance.new("UICorner")
allCorner.CornerRadius = UDim.new(0, 6)
allCorner.Parent = allButton
attachStroke(allButton, THEME.goldSoft, 1, 0.45)

local noneButton = Instance.new("TextButton")
noneButton.Name = "NoneButton"
noneButton.Size = UDim2.new(0, 55, 0, 22)
noneButton.Position = UDim2.new(0, 66, 0, 76)
noneButton.BackgroundColor3 = THEME.panelSoft
noneButton.BorderSizePixel = 0
noneButton.Font = Enum.Font.GothamBold
noneButton.Text = "None"
noneButton.TextColor3 = THEME.text
noneButton.TextSize = 12
noneButton.Parent = mainFrame

local noneCorner = Instance.new("UICorner")
noneCorner.CornerRadius = UDim.new(0, 6)
noneCorner.Parent = noneButton
attachStroke(noneButton, THEME.goldSoft, 1, 0.45)

local itemList = Instance.new("ScrollingFrame")
itemList.Name = "ItemList"
itemList.Size = UDim2.new(1, -12, 1, -158)
itemList.Position = UDim2.new(0, 6, 0, 104)
itemList.CanvasSize = UDim2.new(0, 0, 0, 0)
itemList.AutomaticCanvasSize = Enum.AutomaticSize.None
itemList.ScrollBarThickness = 4
itemList.ScrollBarImageColor3 = THEME.goldSoft
itemList.ScrollingDirection = Enum.ScrollingDirection.Y
itemList.ScrollingEnabled = true
itemList.Active = true
itemList.BackgroundTransparency = 1
itemList.BorderSizePixel = 0
itemList.Parent = mainFrame

local listPadding = Instance.new("UIPadding")
listPadding.PaddingTop = UDim.new(0, 4)
listPadding.PaddingBottom = UDim.new(0, 4)
listPadding.PaddingLeft = UDim.new(0, 2)
listPadding.PaddingRight = UDim.new(0, 2)
listPadding.Parent = itemList

local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 6)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = itemList

local putButton = Instance.new("TextButton")
putButton.Name = "PutButton"
putButton.Size = UDim2.new(1, -12, 0, 40)
putButton.Position = UDim2.new(0, 6, 1, -46)
putButton.BackgroundColor3 = THEME.violetSoft
putButton.BorderSizePixel = 0
putButton.Font = Enum.Font.GothamBold
putButton.Text = "PUT ITEMS"
putButton.TextColor3 = THEME.text
putButton.TextSize = 15
putButton.Parent = mainFrame

local putCorner = Instance.new("UICorner")
putCorner.CornerRadius = UDim.new(0, 8)
putCorner.Parent = putButton
attachStroke(putButton, THEME.goldSoft, 1.2, 0.35)

local editPanel = Instance.new("Frame")
editPanel.Name = "EditPanel"
editPanel.Size = UDim2.new(1, -12, 1, -54)
editPanel.Position = UDim2.new(0, 6, 0, 42)
editPanel.BackgroundColor3 = THEME.panel
editPanel.BackgroundTransparency = 0.06
editPanel.BorderSizePixel = 0
editPanel.Visible = false
editPanel.ZIndex = 15
editPanel.Parent = mainFrame

local editPanelCorner = Instance.new("UICorner")
editPanelCorner.CornerRadius = UDim.new(0, 10)
editPanelCorner.Parent = editPanel
attachStroke(editPanel, THEME.goldSoft, 1.1, 0.35)
attachGradient(editPanel, THEME.panelSoft, THEME.bgDeep)

local editTitle = Instance.new("TextLabel")
editTitle.Name = "EditTitle"
editTitle.BackgroundTransparency = 1
editTitle.Size = UDim2.new(1, -12, 0, 24)
editTitle.Position = UDim2.new(0, 6, 0, 6)
editTitle.Font = Enum.Font.GothamBold
editTitle.Text = "Edit Preset"
editTitle.TextColor3 = THEME.text
editTitle.TextSize = 14
editTitle.TextXAlignment = Enum.TextXAlignment.Left
editTitle.TextStrokeColor3 = THEME.goldSoft
editTitle.TextStrokeTransparency = 0.85
editTitle.Parent = editPanel

local editList = Instance.new("ScrollingFrame")
editList.Name = "EditList"
editList.Size = UDim2.new(1, -12, 1, -124)
editList.Position = UDim2.new(0, 6, 0, 34)
editList.CanvasSize = UDim2.new(0, 0, 0, 0)
editList.AutomaticCanvasSize = Enum.AutomaticSize.None
editList.ScrollBarThickness = 4
editList.ScrollBarImageColor3 = THEME.goldSoft
editList.BackgroundTransparency = 1
editList.BorderSizePixel = 0
editList.Parent = editPanel

local editListPadding = Instance.new("UIPadding")
editListPadding.PaddingTop = UDim.new(0, 2)
editListPadding.PaddingBottom = UDim.new(0, 2)
editListPadding.PaddingLeft = UDim.new(0, 1)
editListPadding.PaddingRight = UDim.new(0, 1)
editListPadding.Parent = editList

local editListLayout = Instance.new("UIListLayout")
editListLayout.Padding = UDim.new(0, 6)
editListLayout.SortOrder = Enum.SortOrder.LayoutOrder
editListLayout.Parent = editList

local addItemNameBox = Instance.new("TextBox")
addItemNameBox.Name = "AddItemNameBox"
addItemNameBox.Size = UDim2.new(0.55, -6, 0, 26)
addItemNameBox.Position = UDim2.new(0, 6, 1, -84)
addItemNameBox.BackgroundColor3 = THEME.panelInset
addItemNameBox.BorderSizePixel = 0
addItemNameBox.ClearTextOnFocus = false
addItemNameBox.Font = Enum.Font.Gotham
addItemNameBox.PlaceholderText = "Item name"
addItemNameBox.PlaceholderColor3 = THEME.textMuted
addItemNameBox.Text = ""
addItemNameBox.TextColor3 = THEME.text
addItemNameBox.TextSize = 12
addItemNameBox.Parent = editPanel

local addNameCorner = Instance.new("UICorner")
addNameCorner.CornerRadius = UDim.new(0, 6)
addNameCorner.Parent = addItemNameBox
attachStroke(addItemNameBox, THEME.violetSoft, 1, 0.4)

local addItemQtyBox = Instance.new("TextBox")
addItemQtyBox.Name = "AddItemQtyBox"
addItemQtyBox.Size = UDim2.new(0.2, -4, 0, 26)
addItemQtyBox.Position = UDim2.new(0.55, 2, 1, -84)
addItemQtyBox.BackgroundColor3 = THEME.panelInset
addItemQtyBox.BorderSizePixel = 0
addItemQtyBox.ClearTextOnFocus = false
addItemQtyBox.Font = Enum.Font.Gotham
addItemQtyBox.PlaceholderText = "Qty"
addItemQtyBox.PlaceholderColor3 = THEME.textMuted
addItemQtyBox.Text = ""
addItemQtyBox.TextColor3 = THEME.text
addItemQtyBox.TextSize = 12
addItemQtyBox.Parent = editPanel

local addQtyCorner = Instance.new("UICorner")
addQtyCorner.CornerRadius = UDim.new(0, 6)
addQtyCorner.Parent = addItemQtyBox
attachStroke(addItemQtyBox, THEME.violetSoft, 1, 0.4)

local addItemButton = Instance.new("TextButton")
addItemButton.Name = "AddItemButton"
addItemButton.Size = UDim2.new(0.25, -4, 0, 26)
addItemButton.Position = UDim2.new(0.75, 4, 1, -84)
addItemButton.BackgroundColor3 = THEME.violetSoft
addItemButton.BorderSizePixel = 0
addItemButton.Font = Enum.Font.GothamBold
addItemButton.Text = "+"
addItemButton.TextColor3 = THEME.text
addItemButton.TextSize = 14
addItemButton.Parent = editPanel

local addItemCorner = Instance.new("UICorner")
addItemCorner.CornerRadius = UDim.new(0, 6)
addItemCorner.Parent = addItemButton
attachStroke(addItemButton, THEME.goldSoft, 1, 0.45)

local saveEditButton = Instance.new("TextButton")
saveEditButton.Name = "SaveEditButton"
saveEditButton.Size = UDim2.new(0.48, -7, 0, 28)
saveEditButton.Position = UDim2.new(0, 6, 1, -44)
saveEditButton.BackgroundColor3 = THEME.success
saveEditButton.BorderSizePixel = 0
saveEditButton.Font = Enum.Font.GothamBold
saveEditButton.Text = "💾 Save"
saveEditButton.TextColor3 = THEME.text
saveEditButton.TextSize = 13
saveEditButton.Parent = editPanel

local saveEditCorner = Instance.new("UICorner")
saveEditCorner.CornerRadius = UDim.new(0, 8)
saveEditCorner.Parent = saveEditButton
attachStroke(saveEditButton, THEME.goldSoft, 1, 0.45)

local cancelEditButton = Instance.new("TextButton")
cancelEditButton.Name = "CancelEditButton"
cancelEditButton.Size = UDim2.new(0.48, -7, 0, 28)
cancelEditButton.Position = UDim2.new(0.52, 1, 1, -44)
cancelEditButton.BackgroundColor3 = THEME.dangerDark
cancelEditButton.BorderSizePixel = 0
cancelEditButton.Font = Enum.Font.GothamBold
cancelEditButton.Text = "Cancel"
cancelEditButton.TextColor3 = THEME.text
cancelEditButton.TextSize = 13
cancelEditButton.Parent = editPanel

local cancelEditCorner = Instance.new("UICorner")
cancelEditCorner.CornerRadius = UDim.new(0, 8)
cancelEditCorner.Parent = cancelEditButton
attachStroke(cancelEditButton, THEME.goldSoft, 1, 0.5)

local hiddenShowBtn = Instance.new("TextButton")
hiddenShowBtn.Name = "HiddenShowBtn"
hiddenShowBtn.Size = UDim2.new(0, 42, 0, 28)
hiddenShowBtn.Position = QUICK_TRADE_UI.hiddenButtonPosition
hiddenShowBtn.BackgroundColor3 = THEME.panel
hiddenShowBtn.BackgroundTransparency = 0.1
hiddenShowBtn.BorderSizePixel = 0
hiddenShowBtn.Active = true
hiddenShowBtn.AutoButtonColor = true
hiddenShowBtn.Font = Enum.Font.GothamBold
hiddenShowBtn.Text = QUICK_TRADE_UI.hiddenButtonText
hiddenShowBtn.TextColor3 = THEME.text
hiddenShowBtn.TextSize = 12
hiddenShowBtn.Visible = false
hiddenShowBtn.ZIndex = 20
hiddenShowBtn.Parent = gui

local hiddenShowCorner = Instance.new("UICorner")
hiddenShowCorner.CornerRadius = UDim.new(0, 8)
hiddenShowCorner.Parent = hiddenShowBtn
attachStroke(hiddenShowBtn, THEME.goldSoft, 1.1, 0.35)

local selectedMap = {}
local rowRefs = {}
local isEnabled = true
local isPutting = false
local hideHintShown = false
local awaitingConfirm = false
local confirmItemCount = 0
local confirmNonce = 0
local pendingSelectedItems = nil
local editState = {
    active = false,
    presetIndex = nil,
    tempItems = {},
    rows = {},
}
local cancelPendingConfirm

local expandedSize = UDim2.new(0, 200, 0, 368)
local collapsedSize = UDim2.new(0, 200, 0, 36)

local function selectedCount()
    local count = 0
    for i = 1, #QUICK_TRADE_PRESETS do
        if selectedMap[i] then count = count + 1 end
    end
    return count
end

local function setSubtleButtonEnabled(btn, enabled)
    btn.Active = enabled
    btn.AutoButtonColor = enabled
    btn.BackgroundColor3 = enabled and THEME.panelSoft or THEME.disabled
    btn.TextColor3 = enabled and THEME.text or THEME.textMuted
end

updatePutButton = function()
    local hasSelection = selectedCount() > 0
    local canInteract = not editState.active

    setSubtleButtonEnabled(allButton, canInteract and not isPutting)
    setSubtleButtonEnabled(noneButton, canInteract and not isPutting)
    searchBox.TextEditable = canInteract
    searchBox.Active = canInteract

    if isPutting then
        if putProgress.total > 0 then
            putButton.Text = "PUTTING " .. tostring(putProgress.current) .. "/" .. tostring(putProgress.total) .. "..."
        else
            putButton.Text = "PUTTING..."
        end
        putButton.BackgroundColor3 = THEME.disabled
        putButton.Active = false
        putButton.AutoButtonColor = false
    elseif editState.active then
        putButton.Text = "PUT ITEMS"
        putButton.BackgroundColor3 = THEME.disabled
        putButton.Active = false
        putButton.AutoButtonColor = false
    elseif awaitingConfirm then
        putButton.Text = "YAKIN? (" .. tostring(confirmItemCount) .. " items)"
        putButton.BackgroundColor3 = THEME.confirm
        putButton.Active = true
        putButton.AutoButtonColor = true
    elseif not hasSelection then
        putButton.Text = "PUT ITEMS"
        putButton.BackgroundColor3 = THEME.disabled
        putButton.Active = false
        putButton.AutoButtonColor = false
    else
        putButton.Text = "PUT ITEMS"
        putButton.BackgroundColor3 = THEME.violetSoft
        putButton.Active = true
        putButton.AutoButtonColor = true
    end
end

local function setMainVisible(visible)
    if not visible and awaitingConfirm then
        cancelPendingConfirm()
    end
    mainFrame.Visible = visible
    hiddenShowBtn.Visible = not visible
end

local function updateItemListCanvas()
    local visibleCount = 0
    local totalHeight = listPadding.PaddingTop.Offset + listPadding.PaddingBottom.Offset

    for _, refs in pairs(rowRefs) do
        if refs.row.Visible then
            visibleCount = visibleCount + 1
            totalHeight = totalHeight + refs.row.Size.Y.Offset
        end
    end

    if visibleCount > 1 then
        totalHeight = totalHeight + ((visibleCount - 1) * listLayout.Padding.Offset)
    end

    itemList.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
end

local function updateRowVisual(index)
    local refs = rowRefs[index]
    if not refs then return end

    local isSelected = selectedMap[index] == true
    refs.checkbox.Text = isSelected and "☑" or "☐"
    refs.checkbox.BackgroundColor3 = isSelected and THEME.violet or THEME.panelSoft
    refs.row.BackgroundColor3 = isSelected and THEME.rowSelected or THEME.row
end

local function updateAllRowVisuals()
    for i = 1, #QUICK_TRADE_PRESETS do
        updateRowVisual(i)
    end
    updatePutButton()
    updateItemListCanvas()
end

cancelPendingConfirm = function()
    awaitingConfirm = false
    confirmItemCount = 0
    pendingSelectedItems = nil
    updatePutButton()
end

local function setGuiEnabled(enabled)
    if not enabled and awaitingConfirm then
        cancelPendingConfirm()
    end
    isEnabled = enabled
    toggleBtn.Text = enabled and "ON" or "OFF"
    toggleBtn.BackgroundColor3 = enabled and THEME.success or THEME.danger
    searchBox.Visible = enabled and not editState.active
    allButton.Visible = enabled and not editState.active
    noneButton.Visible = enabled and not editState.active
    itemList.Visible = enabled and not editState.active
    putButton.Visible = enabled and not editState.active
    editPanel.Visible = enabled and editState.active
    mainFrame.Size = enabled and expandedSize or collapsedSize
    updatePutButton()
    updateItemListCanvas()
end

local function applySearchFilter()
    local query = (searchBox.Text or ""):lower()

    for index, preset in ipairs(QUICK_TRADE_PRESETS) do
        local refs = rowRefs[index]
        if refs then
            if query == "" or preset.name:lower():find(query, 1, true) then
                refs.row.Visible = true
            else
                refs.row.Visible = false
            end
        end
    end

    updateItemListCanvas()
end

local function pointInsideGui(input, guiObj)
    if not input or not guiObj then return false end
    local pos = guiObj.AbsolutePosition
    local size = guiObj.AbsoluteSize
    return input.Position.X >= pos.X
        and input.Position.X <= (pos.X + size.X)
        and input.Position.Y >= pos.Y
        and input.Position.Y <= (pos.Y + size.Y)
end

local function clonePresetItems(items)
    local copy = {}
    for _, item in ipairs(items or {}) do
        table.insert(copy, { name = item.name, qty = item.qty })
    end
    return copy
end

local function refreshPresetRow(index)
    local preset = QUICK_TRADE_PRESETS[index]
    local refs = rowRefs[index]
    if not preset or not refs then return end
    refs.itemName.Text = preset.name
    refs.itemCount.Text = "(" .. tostring(#preset.items) .. " items)"
end

local function updateEditListCanvas()
    local visibleCount = 0
    local totalHeight = editListPadding.PaddingTop.Offset + editListPadding.PaddingBottom.Offset

    for _, refs in ipairs(editState.rows) do
        if refs.row.Visible then
            visibleCount = visibleCount + 1
            totalHeight = totalHeight + refs.row.Size.Y.Offset
        end
    end

    if visibleCount > 1 then
        totalHeight = totalHeight + ((visibleCount - 1) * editListLayout.Padding.Offset)
    end

    editList.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
end

local connectGuiPress

local function renderEditRows()
    for _, refs in ipairs(editState.rows) do
        pcall(function() refs.row:Destroy() end)
    end
    editState.rows = {}

    for index, item in ipairs(editState.tempItems) do
        local row = Instance.new("Frame")
        row.Name = "EditItemRow_" .. tostring(index)
        row.Size = UDim2.new(1, -2, 0, 30)
        row.BackgroundColor3 = THEME.row
        row.BorderSizePixel = 0
        row.LayoutOrder = index
        row.Parent = editList

        local rowCorner = Instance.new("UICorner")
        rowCorner.CornerRadius = UDim.new(0, 6)
        rowCorner.Parent = row
        attachStroke(row, THEME.goldSoft, 1, 0.6)

        local nameLabel = Instance.new("TextLabel")
        nameLabel.BackgroundTransparency = 1
        nameLabel.Size = UDim2.new(0.56, 0, 1, 0)
        nameLabel.Position = UDim2.new(0, 8, 0, 0)
        nameLabel.Font = Enum.Font.Gotham
        nameLabel.Text = item.name
        nameLabel.TextColor3 = THEME.text
        nameLabel.TextSize = 12
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.Parent = row

        local qtyBox = Instance.new("TextBox")
        qtyBox.Name = "QtyBox"
        qtyBox.Size = UDim2.new(0, 44, 0, 22)
        qtyBox.Position = UDim2.new(1, -78, 0.5, -11)
        qtyBox.BackgroundColor3 = THEME.panelInset
        qtyBox.BorderSizePixel = 0
        qtyBox.ClearTextOnFocus = false
        qtyBox.Font = Enum.Font.Gotham
        qtyBox.Text = tostring(item.qty)
        qtyBox.TextColor3 = THEME.text
        qtyBox.TextSize = 12
        qtyBox.Parent = row

        local qtyCorner = Instance.new("UICorner")
        qtyCorner.CornerRadius = UDim.new(0, 6)
        qtyCorner.Parent = qtyBox
        attachStroke(qtyBox, THEME.violetSoft, 1, 0.45)

        local deleteBtn = Instance.new("TextButton")
        deleteBtn.Name = "DeleteBtn"
        deleteBtn.Size = UDim2.new(0, 24, 0, 22)
        deleteBtn.Position = UDim2.new(1, -28, 0.5, -11)
        deleteBtn.BackgroundColor3 = THEME.dangerDark
        deleteBtn.BorderSizePixel = 0
        deleteBtn.Font = Enum.Font.GothamBold
        deleteBtn.Text = "✕"
        deleteBtn.TextColor3 = THEME.text
        deleteBtn.TextSize = 12
        deleteBtn.Parent = row

        local deleteCorner = Instance.new("UICorner")
        deleteCorner.CornerRadius = UDim.new(0, 6)
        deleteCorner.Parent = deleteBtn
        attachStroke(deleteBtn, THEME.goldSoft, 1, 0.55)

        connectGuiPress(deleteBtn, function()
            table.remove(editState.tempItems, index)
            renderEditRows()
        end)

        table.insert(editState.rows, {
            row = row,
            nameLabel = nameLabel,
            qtyBox = qtyBox,
        })
    end

    updateEditListCanvas()
end

local function setEditMode(active, presetIndex)
    if active and awaitingConfirm then
        cancelPendingConfirm()
    end
    editState.active = active
    editState.presetIndex = active and presetIndex or nil

    if active and presetIndex then
        editState.tempItems = clonePresetItems(QUICK_TRADE_PRESETS[presetIndex].items)
        editTitle.Text = "Edit: " .. QUICK_TRADE_PRESETS[presetIndex].name
        addItemNameBox.Text = ""
        addItemQtyBox.Text = ""
        renderEditRows()
    else
        for _, refs in ipairs(editState.rows) do
            pcall(function() refs.row:Destroy() end)
        end
        editState.rows = {}
        editState.tempItems = {}
        editList.CanvasSize = UDim2.new(0, 0, 0, 0)
    end

    setGuiEnabled(isEnabled)
end

connectGuiPress = function(btn, callback)
    if not btn or type(callback) ~= "function" then
        return
    end

    local pressLock = false
    local function wrapped(...)
        if pressLock then
            return
        end

        pressLock = true
        local ok, err = pcall(callback, ...)
        if not ok then
            warn("[QuickTrade] Button callback error: " .. tostring(err))
        end

        task.spawn(function()
            task.wait(0.12)
            pressLock = false
        end)
    end

    btn.Activated:Connect(wrapped)
    btn.MouseButton1Click:Connect(wrapped)
end

for index, preset in ipairs(QUICK_TRADE_PRESETS) do
    local row = Instance.new("Frame")
    row.Name = "ItemFrame_" .. tostring(index)
    row.Size = UDim2.new(1, -4, 0, 42)
    row.BackgroundColor3 = THEME.row
    row.BorderSizePixel = 0
    row.Active = true
    row.LayoutOrder = index
    row.Parent = itemList

    local rowCorner = Instance.new("UICorner")
    rowCorner.CornerRadius = UDim.new(0, 8)
    rowCorner.Parent = row
    attachStroke(row, THEME.goldSoft, 1, 0.65)

    local checkbox = Instance.new("TextButton")
    checkbox.Name = "Checkbox"
    checkbox.Size = UDim2.new(0, 28, 0, 28)
    checkbox.Position = UDim2.new(0, 6, 0.5, -14)
    checkbox.BackgroundColor3 = THEME.panelSoft
    checkbox.BorderSizePixel = 0
    checkbox.Font = Enum.Font.GothamBold
    checkbox.Text = "☐"
    checkbox.TextColor3 = THEME.text
    checkbox.TextSize = 14
    checkbox.Parent = row

    local checkboxCorner = Instance.new("UICorner")
    checkboxCorner.CornerRadius = UDim.new(0, 6)
    checkboxCorner.Parent = checkbox
    attachStroke(checkbox, THEME.goldSoft, 1, 0.55)

    local itemName = Instance.new("TextLabel")
    itemName.Name = "ItemName"
    itemName.BackgroundTransparency = 1
    itemName.Size = UDim2.new(1, -82, 0, 20)
    itemName.Position = UDim2.new(0, 40, 0, 4)
    itemName.Font = Enum.Font.GothamBold
    itemName.Text = preset.name
    itemName.TextColor3 = THEME.text
    itemName.TextSize = 14
    itemName.TextXAlignment = Enum.TextXAlignment.Left
    itemName.TextYAlignment = Enum.TextYAlignment.Bottom
    itemName.TextStrokeColor3 = THEME.bgDeep
    itemName.TextStrokeTransparency = 0.82
    itemName.Parent = row

    local itemCount = Instance.new("TextLabel")
    itemCount.Name = "ItemCount"
    itemCount.BackgroundTransparency = 1
    itemCount.Size = UDim2.new(1, -82, 0, 16)
    itemCount.Position = UDim2.new(0, 40, 0, 22)
    itemCount.Font = Enum.Font.Gotham
    itemCount.Text = "(" .. tostring(#preset.items) .. " items)"
    itemCount.TextColor3 = THEME.textSoft
    itemCount.TextSize = 12
    itemCount.TextXAlignment = Enum.TextXAlignment.Left
    itemCount.TextYAlignment = Enum.TextYAlignment.Top
    itemCount.Parent = row

    local editBtn = Instance.new("TextButton")
    editBtn.Name = "EditBtn"
    editBtn.Size = UDim2.new(0, 24, 0, 24)
    editBtn.Position = UDim2.new(1, -30, 0.5, -12)
    editBtn.BackgroundColor3 = THEME.panelSoft
    editBtn.BorderSizePixel = 0
    editBtn.Font = Enum.Font.GothamBold
    editBtn.Text = "E"
    editBtn.TextColor3 = THEME.text
    editBtn.TextSize = 13
    editBtn.Parent = row

    local editCorner = Instance.new("UICorner")
    editCorner.CornerRadius = UDim.new(0, 6)
    editCorner.Parent = editBtn
    attachStroke(editBtn, THEME.goldSoft, 1, 0.55)

    rowRefs[index] = {
        row = row,
        checkbox = checkbox,
        itemName = itemName,
        itemCount = itemCount,
        editBtn = editBtn,
    }

    local lastToggleAt = 0
    local function toggleSelect()
        if not isEnabled or isPutting or editState.active then return end
        local now = os.clock()
        if (now - lastToggleAt) < 0.12 then return end
        lastToggleAt = now
        if awaitingConfirm then cancelPendingConfirm() end
        selectedMap[index] = not selectedMap[index]
        updateRowVisual(index)
        updatePutButton()
    end

    connectGuiPress(checkbox, toggleSelect)
    connectGuiPress(editBtn, function()
        if isPutting then return end
        cancelPendingConfirm()
        setEditMode(true, index)
    end)
    row.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if pointInsideGui(input, checkbox) or pointInsideGui(input, editBtn) then return end
            toggleSelect()
        end
    end)
end

listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    updateItemListCanvas()
end)

editListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    updateEditListCanvas()
end)

local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil
local hiddenDragging = false
local hiddenDragInput = nil
local hiddenDragStart = nil
local hiddenStartPos = nil

local function updateDrag(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

local function updateHiddenDrag(input)
    local delta = input.Position - hiddenDragStart
    hiddenShowBtn.Position = UDim2.new(
        hiddenStartPos.X.Scale,
        hiddenStartPos.X.Offset + delta.X,
        hiddenStartPos.Y.Scale,
        hiddenStartPos.Y.Offset + delta.Y
    )
end

titleBar.InputBegan:Connect(function(input)
    if isPutting then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        updateDrag(input)
    end
    if hiddenDragging and input == hiddenDragInput then
        updateHiddenDrag(input)
    end
end)

UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if QUICK_TRADE_UI.hideKey and input.KeyCode == QUICK_TRADE_UI.hideKey then
        setMainVisible(not mainFrame.Visible)
    end
end)

connectGuiPress(toggleBtn, function()
    if isPutting or editState.active then return end
    setGuiEnabled(not isEnabled)
end)

connectGuiPress(hideBtn, function()
    setMainVisible(false)
    if not hideHintShown then
        hideHintShown = true
        if QUICK_TRADE_UI.hideKey then
            print("[QuickTrade] GUI disembunyikan. Tekan " .. QUICK_TRADE_UI.hideKey.Name .. " atau tombol '" .. QUICK_TRADE_UI.hiddenButtonText .. "' untuk tampilkan kembali.")
        else
            print("[QuickTrade] GUI disembunyikan. Tekan tombol '" .. QUICK_TRADE_UI.hiddenButtonText .. "' untuk tampilkan kembali.")
        end
    end
end)

connectGuiPress(hiddenShowBtn, function()
    setMainVisible(true)
end)

hiddenShowBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        hiddenDragging = true
        hiddenDragStart = input.Position
        hiddenStartPos = hiddenShowBtn.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                hiddenDragging = false
            end
        end)
    end
end)

hiddenShowBtn.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        hiddenDragInput = input
    end
end)

connectGuiPress(allButton, function()
    if isPutting or editState.active then return end
    cancelPendingConfirm()
    for index, refs in ipairs(rowRefs) do
        if refs.row.Visible then
            selectedMap[index] = true
        end
    end
    updateAllRowVisuals()
end)

connectGuiPress(noneButton, function()
    if isPutting or editState.active then return end
    cancelPendingConfirm()
    for i = 1, #QUICK_TRADE_PRESETS do
        selectedMap[i] = false
    end
    updateAllRowVisuals()
end)

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    if awaitingConfirm then cancelPendingConfirm() end
    applySearchFilter()
end)

connectGuiPress(addItemButton, function()
    if not editState.active then return end

    local itemName = (addItemNameBox.Text or ""):gsub("^%s+", ""):gsub("%s+$", "")
    local qty = tonumber(addItemQtyBox.Text)
    if itemName == "" then
        warn("[QuickTrade] Nama item tidak boleh kosong.")
        return
    end
    if not qty or qty <= 0 then
        warn("[QuickTrade] Qty harus angka > 0.")
        return
    end

    table.insert(editState.tempItems, {
        name = itemName,
        qty = math.floor(qty),
    })
    addItemNameBox.Text = ""
    addItemQtyBox.Text = ""
    renderEditRows()
end)

connectGuiPress(cancelEditButton, function()
    if isPutting then return end
    setEditMode(false)
    updateAllRowVisuals()
    applySearchFilter()
end)

connectGuiPress(saveEditButton, function()
    if not editState.active or not editState.presetIndex then return end

    local newItems = {}
    for _, refs in ipairs(editState.rows) do
        local name = refs.nameLabel.Text
        local qty = tonumber(refs.qtyBox.Text)
        if name ~= "" and qty and qty > 0 then
            table.insert(newItems, {
                name = name,
                qty = math.floor(qty),
            })
        end
    end

    QUICK_TRADE_PRESETS[editState.presetIndex].items = newItems
    refreshPresetRow(editState.presetIndex)
    setEditMode(false)
    updateAllRowVisuals()
    applySearchFilter()
end)

connectGuiPress(putButton, function()
    if not mainFrame.Visible or not isEnabled or isPutting or editState.active then return end

    if awaitingConfirm then
        local selectedItems = pendingSelectedItems or {}
        awaitingConfirm = false
        confirmItemCount = 0
        pendingSelectedItems = nil

        if #selectedItems == 0 then
            updatePutButton()
            return
        end

        isPutting = true
        putProgress.current = 0
        putProgress.total = #selectedItems
        updatePutButton()

        task.spawn(function()
            local ok, err = pcall(function()
                putSelectedItems(selectedItems)
            end)

            if not ok then
                warn("[PUT] Error: " .. tostring(err))
            end

            for i = 1, #QUICK_TRADE_PRESETS do
                selectedMap[i] = false
            end

            isPutting = false
            putProgress.current = 0
            putProgress.total = 0
            updateAllRowVisuals()
        end)
        return
    end

    local selectedItems = {}
    for index, preset in ipairs(QUICK_TRADE_PRESETS) do
        if selectedMap[index] then
            for _, item in ipairs(preset.items) do
                table.insert(selectedItems, {
                    name = item.name,
                    qty = item.qty,
                })
            end
        end
    end

    if #selectedItems == 0 then
        warn("[PUT] Tidak ada item yang dipilih.")
        return
    end

    awaitingConfirm = true
    pendingSelectedItems = selectedItems
    confirmItemCount = #selectedItems
    confirmNonce = confirmNonce + 1
    updatePutButton()

    task.spawn(function()
        local myNonce = confirmNonce
        task.wait(3)
        if awaitingConfirm and confirmNonce == myNonce then
            cancelPendingConfirm()
        end
    end)
end)

updateAllRowVisuals()
setGuiEnabled(true)
applySearchFilter()
setMainVisible(true)

getgenv().QuickTradeCleanup = function()
    if getgenv().QuickTradeSession ~= SESSION_ID then return end
    getgenv().QuickTradeActive = false
    pcall(function()
        if gui and gui.Parent then
            gui:Destroy()
        end
    end)
end

print("[QuickTrade] GUI siap dipakai.")
print("[QuickTrade] Buka trade manual, pilih preset, lalu klik PUT ITEMS.")

-- Cara pakai:
-- 1. Edit QUICK_TRADE_PRESETS di bagian atas (nama preset + list item bahan).
-- 2. Atau edit preset langsung dari GUI dengan tombol ✎ (perubahan in-memory saja).
-- 3. Buka trade window manual di game.
-- 4. Pilih preset dari GUI (gunakan search, All/None untuk filter).
-- 5. Klik PUT ITEMS -> konfirmasi -> auto add semua bahan.
-- 6. Klik ✕ untuk hide GUI, pakai tombol QT untuk show lagi.
