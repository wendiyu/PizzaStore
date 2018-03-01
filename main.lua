-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Feb 2018
--
-- calculate the cost of pizza
-----------------------------------------------------------------------------------------

local instruction = display.newText("ICS20 Pizza Store ", display.contentCenterX, display.contentCenterY - 600, native.systemFont, 100)

local questionText = display.newText("What size of pizza would you like? ", 924, 400, native.systemFont, 90)

local sizeOfPizza = display.newText("(in inch)", 724, 600, native.systemFont, 90)
local sizeOfPizzaTextField = native.newTextField( display.contentCenterX - 350, display.contentCenterY + 30, 600, 90 )
sizeOfPizzaTextField.id = "size of pizza textField"

local explaination = display.newText("in inch", 1124, 800, native.systemFont, 90)

local subtotal = display.newText("subtotal:", 324, 1100, native.systemFont, 90)
local tax = display.newText("Tax:", 924, 1100, native.systemFont, 90)
local total = display.newText("Total Cost:", 1624, 1100, native.systemFont, 90)

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 30
enterButton.id = "enter button"

local function calculateButtonTouch( event )
	-- it is not perfect, but we will make it better soon
	local sizeOfPizza
	local subtotal1
	local tax1
	local total1

	sizeOfPizza = sizeOfPizzaTextField.text
	subtotal1 = 0.75+1+(sizeOfPizza*0.50)
	tax1 = subtotal1*0.13
	total1 = tax1+subtotal1
	subtotal.text = "Subtotal:" .. subtotal1
	tax.text = "Tax:" .. tax1
	total.text = "Total Cost" .. total1

	return true

end

enterButton:addEventListener("touch", calculateButtonTouch)
