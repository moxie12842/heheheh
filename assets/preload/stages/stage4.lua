
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -600.95;
local yy = 370;
local xx2 = 100;
local yy2 = 100;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('bg4', 'bg4', -2250, -1400)
    setScrollFactor('bg4', 1, 1)
    addLuaSprite('bg4', false)
    scaleObject('bg4', 2, 2)

    makeLuaSprite('buildings4', 'buildings4', -2250, -1400)
    setScrollFactor('buildings4', 1, 1)
    addLuaSprite('buildings4', false)
    scaleObject('buildings4', 2, 2)

    makeLuaSprite('buildings4(2)', 'buildings4(2)', -2250, -1400)
    setScrollFactor('buildings4(2)', 1, 1)
    addLuaSprite('buildings4(2)', false)
    scaleObject('buildings4(2)', 2, 2)

    makeLuaSprite('bushes4', 'bushes4', -2350, -1500)
    setScrollFactor('bushes4', 1, 1)
    addLuaSprite('bushes4', true)
    scaleObject('bushes4', 2, 2)

    makeLuaSprite('ground4', 'ground4', -2250, -1400)
    setScrollFactor('ground4', 1, 1)
    addLuaSprite('ground4', false)
    scaleObject('ground4', 2, 2)

    makeLuaSprite('overlay4(1)', 'overlay4(1)', -2350, -1500)
    setScrollFactor('overlay4(1)', 1, 1)
    addLuaSprite('overlay4(1)', true)
    scaleObject('overlay4(1)', 2, 2)

    makeLuaSprite('overlay4(2)', 'overlay4(2)', -2350, -1500)
    setScrollFactor('overlay4(2)', 1, 1)
    addLuaSprite('overlay4(2)', true)
    scaleObject('overlay4(2)', 2, 2)

    makeLuaSprite('overlay4(3)', 'overlay4(3)', -2350, -900)
    setScrollFactor('overlay4(3)', 1, 1)
    addLuaSprite('overlay4(3)', true)
    scaleObject('overlay4(3)', 2, 2)

    setProperty('defaultCamZoom',0.65)
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

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*50) - 550)
	yy = (math.sin(i/20)*50) - 150

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.55)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.65)
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
