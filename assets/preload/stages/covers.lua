
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 1050.95;
local yy = 1170;
local xx2 = 1872.9;
local yy2 = 1125;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('c1', 'c1', -850, -400)
    setScrollFactor('c1', 0.1, 0.1)
    addLuaSprite('c1', false)
    scaleObject('c1', 1.3,1.3)

    makeLuaSprite('c2', 'c2', -850, -400)
    setScrollFactor('c2', 0.1, 0.1)
    addLuaSprite('c2', false)
    scaleObject('c2', 1.3,1.3)

    makeLuaSprite('c25', 'c25', -950, -400)
    setScrollFactor('c25', 0.1, 0.1)
    addLuaSprite('c25', false)
    scaleObject('c25', 1.3,1.3)

    makeLuaSprite('c3', 'c3', -800, -300)
    setScrollFactor('c3', 0.3, 0.3)
    addLuaSprite('c3', false)
    scaleObject('c3', 1.3,1.3)

    makeLuaSprite('c4', 'c4', -750, -260)
    setScrollFactor('c4', 0.5, 0.5)
    addLuaSprite('c4', false)
    scaleObject('c4', 1.3,1.3)

    makeLuaSprite('c5', 'c5', -600, -100)
    setScrollFactor('c5', 1, 1)
    addLuaSprite('c5', false)
    scaleObject('c5', 1.3,1.3)

    makeLuaSprite('c6', 'c6', -400, -250)
    setScrollFactor('c6', 1, 1)
    addLuaSprite('c6', false)
    scaleObject('c6', 1.3,1.3)

    makeLuaSprite('c7', 'c7', -600, -100)
    setScrollFactor('c7', 1, 1)
    addLuaSprite('c7', true)
    scaleObject('c7', 1.3,1.3)

    makeLuaSprite('c8', 'c8', -250, -100)
    setScrollFactor('c8', 1, 1)
    addLuaSprite('c8', true)
    scaleObject('c8', 1.1,1.1)

    setProperty('defaultCamZoom',0.76)
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
	
	setProperty('dad.y', (math.sin(i/20)*75) + 400)
	yy = (math.sin(i/20)*75) + 870

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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
      
            setProperty('defaultCamZoom',0.76)
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
