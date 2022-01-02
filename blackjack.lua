--[[ 
BlackJack for Lua
]]--

--Generates the random cards
dealerFirstCard = math.randomseed(math.random(1, 10))
dealerSecondCard = math.randomseed(math.random(1, 10))
dealerTotal = dealerFirstCard + dealerSecondCard
playerTotal = math.randomseed(math.random(1, 20))
 
print("Your total is " .. playerTotal)
print("Dealer's first card is " .. dealerFirstCard)

while true do
    print("Hit or Stand?")
    response = io.read()

    if response == "hit" then
        playerTotal = playerTotal + math.randomseed(math.random(1, 10))
        print("You now have " .. playerTotal .. " cards")
        if playerTotal > 21 then
            print("You busted! Dealer had " .. dealerTotal .. " cards")
            os.exit()
        end
    else
        if playerTotal ~= dealerTotal then 
            if playerTotal == 21 then print("You Won! Dealer had " .. dealerTotal .. " cards.") elseif dealerTotal == 21 then print("You Lost! Dealer had 21 cards.")
            elseif dealerTotal > playerTotal then print("You Lost! Dealer had " .. dealerTotal .. " cards.") elseif playerTotal > dealerTotal then print("You won! Dealer had " .. dealerTotal .. " cards." )
            end
        else
            print("You Tied!")
        end
        os.exit()
    end
end