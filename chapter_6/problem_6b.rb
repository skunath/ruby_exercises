

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


$state_history = {}

def add_queue(new_state, move_list, direction)

  if !$state_history.has_key?(new_state)
    new_move_list = Array.new(move_list)
    $queue.push([new_state, new_move_list << direction])
    $state_history[new_state] = 1
  end
end

$counter = 0
$final_state = nil
$final_steps = nil
#breadth First Search
def attempt_conversions()
  
  while $queue.size > 0
    #if $counter > 5
    #  break 
    #end
    
    input = $queue.delete_at(0)
    puts "Input: #{input}"
    puts "*" * 50
    move_list = input[1]
    
    c1 = convert_1(input[0])
    if c1 != input[0]
      #$queue.push([c1, input[1] << "<- convert 1"])
      add_queue(c1, move_list, "<- convert 1")
    end
    
    c2 = convert_2(input[0])
    if c2 != input[0]
      #$queue.push([c2, input[1] << "<- convert 2"])
      add_queue(c2, move_list, "<- convert 2")
    end
    
    c3 = convert_3(input[0])
    if c3 != input[0]
      #$queue.push([c3, input[1] << "<- convert 3"])
      add_queue(c3, move_list,  "<- convert 3")
    end
    
    hp = health_potion(input[0])
    if hp != input[0]
      #$queue.push([hp, input[1] << "<- Health Potion"])
      add_queue(hp, move_list,  "<- Health Potion")
    end
    if hp[5] > $max_hp
      $max_hp = hp[5] 
      puts $max_hp
      $final_state = hp
      $final_steps = move_list
    end
    $counter += 1
  end

end

# start the queue
$queue = []
$queue << master

attempt_conversions()
puts "Max Health Potions: #{$max_hp}"
puts "Total Iterations: #{$counter}"
puts "Final State: #{$final_state}"
puts "Final Steps: #{$final_steps}"