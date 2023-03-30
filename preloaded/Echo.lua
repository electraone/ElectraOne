ltime = controls.get(25)
rtime = controls.get(44)
l16th = controls.get(20)
r16th = controls.get(39)
ldiv = controls.get(21)
rdiv = controls.get(40)

rs = controls.get(42)
rm = controls.get(43)

modrate = controls.get(32)
modfreq = controls.get(30)

islsync = true
isl16th = false
isrsync = true
isr16th = false
islinked = false

function setvisibility()
    ltime:setVisible(not islsync)
    l16th:setVisible(islsync and isl16th)
    ldiv:setVisible(islsync and not isl16th)
    rtime:setVisible(not islinked and not isrsync)
    r16th:setVisible(not islinked and (isrsync and isr16th))
    rdiv:setVisible(not islinked and (isrsync and not isr16th))
    rs:setVisible(not islinked)
    rm:setVisible(not islinked)
end

function lsync(valueObject, value)
    islsync = (value ~= 0)
    setvisibility()
end

function rsync(valueObject, value)
    isrsync = (value ~= 0)
    setvisibility()
end

function modsync(valueObject, value)
    if value == 0 then
        modfreq:setVisible(true)
        modrate:setVisible(false)
    else
        modfreq:setVisible(false)
        modrate:setVisible(true)
    end
end

function lmode(valueObject, value)
    isl16th = (value == 3.0)    
    setvisibility()
end

function rmode(valueObject, value)
    isr16th = (value == 3.0)    
    setvisibility()
end

function lrlink(valueObject, value)
    islinked = (value ~= 0)
    setvisibility()
end
