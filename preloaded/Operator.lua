acoarse = controls.get(1)
afine = controls.get(2)
afreq = controls.get(3)
amulti = controls.get(4)

function afixed(valueObject, value)
    acoarse:setVisible(value == 0)
    afine:setVisible(value == 0)
    afreq:setVisible(value ~= 0)
    amulti:setVisible(value ~= 0)
end

bcoarse = controls.get(19)
bfine = controls.get(20)
bfreq = controls.get(21)
bmulti = controls.get(22)

function bfixed(valueObject, value)
    bcoarse:setVisible(value == 0)
    bfine:setVisible(value == 0)
    bfreq:setVisible(value ~= 0)
    bmulti:setVisible(value ~=0)
end

ccoarse = controls.get(36)
cfine = controls.get(37)
cfreq = controls.get(38)
cmulti = controls.get(39)

function cfixed(valueObject, value)
    ccoarse:setVisible(value == 0)
    cfine:setVisible(value == 0)
    cfreq:setVisible(value ~= 0)
    cmulti:setVisible(value ~= 0)
end

dcoarse = controls.get(53)
dfine = controls.get(54)
dfreq = controls.get(55)
dmulti = controls.get(56)

function dfixed(valueObject, value)
    dcoarse:setVisible(value == 0)
    dfine:setVisible(value == 0)
    dfreq:setVisible(value ~= 0)
    dmulti:setVisible(value ~= 0)
end

-- retrig/loop visibility

aeretrig = controls.get(16)
aeloop = controls.get(11)

function aemode(valueObject, value)
    aeretrig:setVisible((value == 2) or (value == 3))
    aeloop:setVisible(value == 1)
end

beretrig = controls.get(34)
beloop = controls.get(29)

function bemode(valueObject, value)
    beretrig:setVisible((value == 2) or (value == 3))
    beloop:setVisible(value == 1)
end

ceretrig = controls.get(51)
celoop = controls.get(46)

function cemode(valueObject, value)
    ceretrig:setVisible((value == 2) or (value == 3))
    celoop:setVisible(value == 1)
end

deretrig = controls.get(68)
deloop = controls.get(63)

function demode(valueObject, value)
    deretrig:setVisible((value == 2) or (value == 3))
    deloop:setVisible(value == 1)
end

-- phase/feedback visibility

aphase = controls.get(131)
afeedback = controls.get(126)

function aretrig(valueObject, value)
    aphase:setVisible(value ~= 0)
    afeedback:setVisible(value == 0)
end

bphase = controls.get(141)
bfeedback = controls.get(136)

function bretrig(valueObject, value)
    bphase:setVisible(value ~= 0)
    bfeedback:setVisible(value == 0)
end

cphase = controls.get(151)
cfeedback = controls.get(146)

function cretrig(valueObject, value)
    cphase:setVisible(value ~= 0)
    cfeedback:setVisible(value == 0)
end

dphase = controls.get(161)
dfeedback = controls.get(156)

function dretrig(valueObject, value)
    dphase:setVisible(value ~= 0)
    dfeedback:setVisible(value == 0)
end
