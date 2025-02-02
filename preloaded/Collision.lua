rate1 = controls.get(19)
freq1 = controls.get(14)

rate2 = controls.get(33)
freq2 = controls.get(28)

function sync1(valueObject, value)
    freq1:setVisible(value == 0)
    rate1:setVisible(value ~= 0)
end

function sync2(valueObject, value)
    freq2:setVisible(value == 0)
    rate2:setVisible(value ~= 0)
end

material1 = controls.get(82)
inharmonics1 = controls.get(78)
radius1 = controls.get(93)
opening1 =  controls.get(87)


function type1(valueObject, value)
    material1:setVisible(value < 5)
    inharmonics1:setVisible(value < 5)
    radius1:setVisible(value > 4)
    opening1:setVisible(value > 4)
end

material2 = controls.get(113)
inharmonics2 = controls.get(109)
radius2 = controls.get(124)
opening2 =  controls.get(118)

function type2(valueObject, value)
    material2:setVisible(value < 5)
    inharmonics2:setVisible(value < 5)
    radius2:setVisible(value > 4)
    opening2:setVisible(value > 4)
end
