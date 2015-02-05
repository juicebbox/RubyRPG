module GameWorld
  module BattleGround
    class Cell
      #TO DO
      #implement cell logic here
      #terrain is used later to give penalty on movement of the creatures
      #normal terrain means no penalty.
      attr_accessor :coordinate_x, :coordinate_x, :terrain
      def initialize(coordinate_x,coordinate_y, terrain='normal')
        @coordinate_x = coordinate_x
        @coordinate_y = coordinate_y
        @terrain = terrain
      end  
      #this method tells if the cell can be crossed by creature
      def is_crossable?
        @terrain == 'mountain'? false : true
      end
    end

    class Field
      #TO DO
      #implement field as matrix of cells
      attr_accessor :field
      #the field gets cells input as string 
      def initialize(field)
        @field = field
      end
      
      def divide_field_to_cells(field)
        
      end
    end
  end
end
