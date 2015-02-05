module GameWorld
  module BattleGround
    class Cell
      # TO DO
      # implement cell logic here
      # terrain is used later to give penalty on movement of the creatures
      # normal terrain means no penalty.
      attr_accessor :coordinate_x, :coordinate_x, :terrain
      def initialize(coordinate_x,coordinate_y, terrain='#')
        @coordinate_x = coordinate_x
        @coordinate_y = coordinate_y
        @terrain = set_terrain(terrain)
      end  
      #this method tells if the cell can be crossed by creature
      def is_crossable?
        @terrain == 'mountain'? false : true
      end
      
      def terrain_type
        @terrain
      end
      def set_terrain(terrain)
        case terrain
          switch '#' then 'normal'
          switch '!' then 'mountain'
          switch '=' then 'river'
      
    end

    class Field
      # TO DO
      # implement field as matrix of cells
      attr_accessor :field
      # the field gets cells input as string 
      def initialize(field)
        @field = divide_field_to_cells(field)
      end
      # TO DO: Fix dividing the string to cells! 
      # TO DO: Implement method draw_map
      def divide_field_to_cells(field)
        new_field = []
        field = field.lines.map(&:chomp)
        counter = [1,0]
        field.each do |row|
            row = row.split(',')
            counter[0] = (counter[0] % 3) + 1
            row.each do |cell|
            new_field << GameWorld::BattleGround::Cell.new(counter[0],counter[1], cell)
            counter[1] = (counter[1] % 3) + 1
          end
        end
        puts field[2,2]
        new_field
      end
      
      def info
        @field.each do |cell|
          cell.is_crossable?
        end
      end
    end
  end
end
