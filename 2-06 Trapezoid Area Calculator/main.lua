-----------------------------------------------------------------------------------------

--

-- how to calculate the area of a trapezoid

-- 

-----------------------------------------------------------------------------------------



local baseOfTrapezoidATextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 250, 55 )

baseOfTrapezoidATextField.id = "length textFieldA"

local baseOfTrapezoidBTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 250, 55 )

baseOfTrapezoidBTextField.id = "length textFieldB"

local heightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 250, 55 )

heightOfTrapezoidTextField.id = "length textFieldC"



local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )

areaOfTrapezoidTextField.id = "area textField"

areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )



local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 157, 157 )

calculateButton.x = display.contentCenterX

calculateButton.y = display.contentCenterY

calculateButton.id = "calculate button"

 

local function calculateButtonTouch( event )

    -- this function calculates the area of a trapezoid given the length of one of its sides

 

    local baseOfTrapezoidA
    local baseOfTrapezoidB
    local areaOfTrapezoid

 

    baseOfTrapezoidA = baseOfTrapezoidATextField.text
    baseOfTrapezoidB = baseOfTrapezoidBTextField.text
    heightOfTrapezoid = heightOfTrapezoidTextField.text

    areaOfTrapezoid = ((baseOfTrapezoidA + baseOfTrapezoidB)/2) *heightOfTrapezoid

    -- print( areaOfTrapezoid )

    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid



    return true

end



calculateButton:addEventListener( "touch", calculateButtonTouch )