class Player
  def play_turn(warrior)    
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
   @health=warrior.health
  end
end
