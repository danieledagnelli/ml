fun change (coinvals, 0) = []
  | change (c::coinvals, amount) = 
      if amount < c then change(coinvals, amount)
                    else c::change(c::coinvals, amount-c);

fun allChange (coins, coinvals, 0) = [coins]
  | allChange (coins, [], amount)  = []
  | allChange (coins, c::coinvals, amount) = 
       if amount < 0 then []
       else allChange (c::coins, c::coinvals, amount-c) @ allChange(coins,
                                                coinvals,amount);

