class TRPlayer
  
  def initialize(name, xoro)
    @name = name
    @xoro = xoro
  end

  def makeMove(state)
    empty = state.count{|x| x=="."}
    slot = rand(empty)
    ei = 0
    for i in 0..9
      next if state[i] != "." 
      if ei == slot
        state[i] = @xoro
        return state
      end
      ei+=1
    end
  end

  def to_s
    "TRPlayer: " + @name
  end

end

def tttrandomplayer(name, xoro)
  TRPlayer.new(name, xoro)
end

load 'config.rb'

