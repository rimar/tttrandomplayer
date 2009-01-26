require 'config'

class TRPlayer
  
  def initialize(name, mark)
    @name = name
    @mark = mark
  end

  def makeMove(state)
    empty = state.count{|x| x==""}
    slot = rand(empty)
    i = 0
    return state.map{|x| x=="" && i++ == slot ? @mark : x }
  end

end



