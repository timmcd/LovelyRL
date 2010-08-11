
Level = {}
Level.prototype = { map = {" "," "}, icons = {'#' = 'wall', ' ' = 'blank', }, }
Level.mt = {}
function Level.new(o)
   setmetatable(o, Level.mt)
   return o
end
Level.mt.__index = function (table, key)
		      return Window.prototype[key]
		   end

map1 = {
   "         ",
   "         ",
   "  #   #  ",
   "###   ###",
   "#       #",
   "#       #",
   "###   ###",
   "  #   #  ",
   "         ",
   "         "
}

level1 = Level.new {map = map1, }

currentLevel = level1


