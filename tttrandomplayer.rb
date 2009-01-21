class TRPlayer
  def makeMove(state)
    state[0] = 'x'
    return state
  end
end

def init
  return TRPlayer.new
end


