-----------------------------------------------------------------------------------------
--
-- main.lua
-- Avani Sant 
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0, 0, 1 )

local largeButton = display.newImageRect( "my assets/untitled.png", 200, 100 )
largeButton.x = display.contentCenterX
largeButton.y = 385
largeButton.id = "large button"

local extraLargeButton = display.newImageRect( "my assets/untitled (1).png", 200, 100 )
extraLargeButton.x = display.contentCenterX
extraLargeButton.y = 415
extraLargeButton.id = "extra large button"

local toppingsTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 250, 50 )
toppingsTextField.id = "toppings textField"

local toppingsText = display.newText( "Toppings (1-4)" , 160, 240, native.systemFont, 25)
toppingsText.id = "toppings text"
toppingsText:setFillColor( 1, 1, 1)


local subtotalText = display.newText( "Subtotal" , 160, 50, native.systemFont, 18)
subtotalText.id = "subtotal text"
subtotalText:setFillColor( 0, 0, 0)

local taxText = display.newText( "tax" , 160, 75, native.systemFont, 18)
taxText.id = "tax text"
taxText:setFillColor( 0, 0, 0)

local totalText = display.newText( "Total" , 160, 100, native.systemFont, 18)
totalText.id = "total text"
totalText:setFillColor( 0, 0, 0)

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local hst
local subtotal
local total
local toppings

toppings = toppingsTextField.text

local function largeButtonTouch( event )
   

    if toppings == 1 then
    	subtotal = (6.00 + 1.00)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
    
    elseif toppings == 2 then
    	subtotal = (6.00 + 1.75)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
    	

    elseif toppings == 3 then
    	subtotal = (6.00 + 2.50)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
    	
 
    elseif toppings == 4 then
    	subtotal = (6.00 + 3.35)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)

    else 
    	local Error = display.newText ( "Invalid number of toppings", 160, 200, native.systemFont, 25)
    	Error.id = "error text"
    	Error:setFillColor( 1, 0, 0)


   end
   
 --- calculations
   --hst = subtotal*0.13
	--hst = round(hst,2)
 ---total = subtotal+hst
	--total = round(total,2)
	--display text

	subtotalText.text = "Subtotal ="  ..subtotal
	taxText.text = "13% HST =" ..hst
	totalText.text = "Total =" ..total


    return true
end


local function extraLargeButtonTouch( event )
    -- extra large pizza

    if toppings == 1 then
    	subtotal = (10.00 + 1.00)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
    
    elseif toppings == 2 then
    	subtotal = (10.00 + 1.75)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
    	

    elseif toppings == 3 then
    	subtotal = (10.00 + 2.50)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)
 
    elseif toppings == 4 then
    	subtotal = (10.00 + 3.35)
    	hst = subtotal*0.13
		hst = round(hst,2)

		total = subtotal+hst
		total = round(total,2)

    else 	
		local Error = display.newText ( "Invalid number of toppings", 160, 200, native.systemFont, 25)
    	Error.id = "error text"
    	Error:setFillColor( 1, 0, 0)

    end

-- calculations
--hst = subtotal*0.13
---hst = round(hst,2)
	---total = subtotal+hst
	---total = round(total+hst)
---display text

	subtotalText.text = "Subtotal =" ..subtotal
	taxText.text = "13% HST =" ..hst
	totalText.text = "Total =" ..total



    return true
end

largeButton:addEventListener( "touch", largeButtonTouch)
extraLargeButton:addEventListener( "touch", extraLargeButtonTouch)
