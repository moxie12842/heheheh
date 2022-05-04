
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -600.95;
local yy = 370;
local xx2 = -122.9;
local yy2 = 105;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('s1', 's1', -1300, -500)
    setScrollFactor('s1', 0.1, 0.1)
    addLuaSprite('s1', false)
    scaleObject('s1', 1.8, 1.8)

    makeLuaSprite('s2', 's2', -1700, -600)
    setScrollFactor('s2', 0.2, 0.2)
    addLuaSprite('s2', false)
    scaleObject('s2', 1.8, 1.8)

    makeLuaSprite('s3', 's3', -1700, -600)
    setScrollFactor('s3', 0.3, 0.3)
    addLuaSprite('s3', false)
    scaleObject('s3', 1.8, 1.8)

     makeLuaSprite('s4', 's4', -1700, -600)
    setScrollFactor('s4', 0.4, 0.4)
    addLuaSprite('s4', false)
    scaleObject('s4', 1.8, 1.8)

    makeLuaSprite('s5', 's5', -1700, -800)
    setScrollFactor('s5', 0.5, 0.5)
    addLuaSprite('s5', false)
    scaleObject('s5', 1.8, 1.8)

    makeLuaSprite('s6', 's6', -1700, -800)
    setScrollFactor('s6', 0.6, 0.6)
    addLuaSprite('s6', false)
    scaleObject('s6', 1.8, 1.8)

    makeLuaSprite('s7', 's7', -1700, -800)
    setScrollFactor('s7', 0.7, 0.7)
    addLuaSprite('s7', false)
    scaleObject('s7', 1.8, 1.8)

    makeLuaSprite('s8', 's8', -1950, -950)
    setScrollFactor('s8', 1, 1)
    addLuaSprite('s8', false)
    scaleObject('s8', 1.8, 1.8)

    makeLuaSprite('s9', 's9', -2050, -1050)
    setScrollFactor('s9', 1, 1)
    addLuaSprite('s9', false)
    scaleObject('s9', 1.8, 1.8)

     makeLuaSprite('s10', 's10', -2000, -900)
    setScrollFactor('s10', 1, 1)
    addLuaSprite('s10', true)
    scaleObject('s10', 1.7, 1.7)

    setProperty('defaultCamZoom',0.55)
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
	
	setProperty('dad.y', (math.sin(i/20)*75) - 650)
	yy = (math.sin(i/20)*75) - 150

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
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
      
            setProperty('defaultCamZoom',0.55)
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
