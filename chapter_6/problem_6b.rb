

# conversion functions
def convert_1(state)
  state = Array.new(state)
  if state[0] >= 4 and state[2] >=2
    state[3] = state[3] + 3
    state[4] = state[4] + 4
    
    state[0] = state[0] - 4
    state[2] = state[2] - 2
  end
  return state
end

def convert_2(state)
  state = Array.new(state)
  if state[4] >= 3 and state[1] >= 1
    state[0] = state[0] + 2
    
    state[4] = state[4] - 3
    state[1] = state[1] - 1
  end
  return state
end

def convert_3(state)
  state = Array.new(state)
  if state[2] >= 1 and state[3] >= 2
    state[1] = state[1] + 1
    
    state[2] = state[2] - 1
    state[3] = state[3] - 2
  end
  return state
end

def health_potion(state)
  state = Array.new(state)
  if state[1] >= 4 and state[4] >= 7 and state[3] >= 2
    state[5] = state[5] + 1
    
    state[1] = state[1] - 4
    state[4] = state[4] - 7
    state[3] = state[3] - 2
  
  end
  return state
end

# eon, tof, wob, af, tow, hp
supplies = [34,59,20,5,20,0]
$max_hp = 0
master = [supplies, []]



#breadth First Search
def attempt_conversions()
  
  while $queue.size > 0
    input = $queue.delete_at(0)
    
    c1 = convert_1(input[0])
    if c1 != input[0]
      $queue.push([c1, input[1] << "<- convert 1"])

    end
    
    c2 = convert_2(input[0])
    if c2 != input[0]
      $queue.push([c2, input[1] << "<- convert 2"])

    end
    
    c3 = convert_3(input[0])
    if c3 != input[0]
      $queue.push([c3, input[1] << "<- convert 3"])

    end
    
    hp = health_potion(input[0])
    if hp != input[0]
      $queue.push([hp, input[1] << "<- Health Potion"])
      
    end
    if hp[5] > $max_hp
      $max_hp = hp[5] 
      puts $max_hp
    end
  end

end

# start the queue
$queue = []
$queue << master

attempt_conversions()
puts $max_hp