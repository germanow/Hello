class Player
  def play_turn(warrior)
 if (warrior.feel.wall?)
 then 
  warrior.pivot!
  else
   if (warrior.health<13)
  then
    if (warrior.feel(:backward).captive?)
     then
      warrior.rescue!:backward
     else
      if (warrior.feel(:backward).wall?)
      then warrior.rest!
      else
      warrior.walk!:backward
      end
    end
  else
     
   if (warrior.feel.empty?)
   then
    if (warrior.health<20)
     then
      if(@health<=warrior.health)
       then
        warrior.rest!
      else
       warrior.walk!
       end
     else
       warrior.walk!
    end
   else
    if (warrior.feel.captive?)
     then
      warrior.rescue!
     else
      warrior.attack!
    end
   end
   end
   end
   @health=warrior.health
  end
end
