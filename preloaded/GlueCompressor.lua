scison = false

scgain = controls.get(14)
scmix = controls.get(15)

function setscvisibility()
    scgain:setVisible(scison)
    scmix:setVisible(scison)
end

function scon(valueObject, value)
    scison = (value ~= 0)
    setscvisibility()
end

sceqison = false
eqisshelf = true

eqtp = controls.get(13)
eqfreq = controls.get(9)
eqgain = controls.get(10)
eqq = controls.get(12)

function seteqvisibility()
   eqtp:setVisible(sceqison)
   eqfreq:setVisible(sceqison)   
   eqgain:setVisible(sceqison and eqisshelf)
   eqq:setVisible(sceqison and (not eqisshelf))
end

function sceqon(valueObject, value)
    sceqison = (value ~= 0)
    seteqvisibility()
end

function eqtype(valueObject, value)
    eqisshelf = (value < 3)
    seteqvisibility()
end
