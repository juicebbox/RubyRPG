module GameWorld
  module Character
    class Creature
      #TO DO
      #implement logic that is used for all creatures:
      #Heroes and Enemies:
      #health, damage, action_points
    end

    class Hero < Creature
      # TO DO
      # implement hero:
      # armor, chance to hit, class...
    end

    class Enemy < Creature
      # TO DO
      # Implement logic for all enemies:
      # is_aggressive? - if true, enemy tries to fight hero.
    end
  end
end