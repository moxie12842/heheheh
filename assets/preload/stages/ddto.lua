local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 940;
local yy = 670;
local xx2 = 1000;
local yy2 = 670;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('DDLC-1', 'DDLC-1', -50, -80)
    setScrollFactor('DDLC-1', 1, 1)
    addLuaSprite('DDLC-1', false)
    scaleObject('DDLC-1', 1.1,1.1)

    makeLuaSprite('DDLC-2', 'DDLC-2', -50, -80)
    setScrollFactor('DDLC-2', 1, 1)
    addLuaSprite('DDLC-2', false)
    scaleObject('DDLC-2', 1.1,1.1)

    setProperty('defaultCamZoom',0.8)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-(ofs/2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+(ofs/2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-(ofs/2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+(ofs/2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-(ofs/2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+(ofs/2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-(ofs/2))
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+(ofs/2))
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end