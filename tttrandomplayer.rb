class TRPlayer
  
  def initialize(name, xoro)
    @name = name
    @xoro = xoro
  end

  def makeMove(state)
    empty = state.count{|x| x==""}
    slot = rand(empty)
    i=-1
    return state.map{|x| 
      i+=1
      if x=="" && i == slot 
        @xoro 
      else 
        x 
      end
    }
  end

  def to_s
    "TRPlayer: " + @name
  end

end

def player(name, xoro)
  TRPlayer.new(name, xoro)
end

load 'config.rb'

