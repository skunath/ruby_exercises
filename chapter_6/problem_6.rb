

# conversion functions
def convert_1(state)
  if state[0] >= 4 and state[2] >=2
    state[3] = state[3] + 3
    state[4] = state[4] + 4
    
    state[0] = state[0] - 4
    state[2] = state[2] - 2
  end
  return state
end

def convert_2(state)
  if state[4] >= 3 and state[1] >= 1
    state[0] = state[0] + 2
    
    state[4] = state[4] - 3
    state[1] = state[1] - 1
  end
  return state
end

def convert_3(state)
  if state[2] >= 1 and state[3] >= 2
    state[1] = state[1] + 1
    
    state[2] = state[2] - 1
    state[3] = state[3] - 2
  end
  return state
end

def health_potion(state)
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
master = supplies
def attempt_conversions(input)
  new_case = Array.new(input)
  
  new_case = convert_1(new_case)
  if new_case != input
    #puts "Convert 1 - #{new_case.to_s}"
    attempt_conversions(new_case)
  end
  
  new_case_2 = Array.new(new_case)
  new_case_2 = convert_2(new_case_2)
  if new_case_2 != new_case
    #puts "Convert 2 - #{new_case_2.to_s}"
    attempt_conversions(new_case_2)
  end

  new_case_3 = Array.new(new_case_2)
  new_case_3 = convert_3(new_case_3)
  if new_case_3 != new_case_2
    #puts "Convert 3 - #{new_case_3.to_s}"
    attempt_conversions(new_case_3)
  end

  new_case_4 = Array.new(new_case_3)
  new_case_4 = health_potion(new_case_4)

  $max_hp = new_case_4[5] if new_case_4[5] >= $max_hp
    
  if new_case_4 != new_case_3
    #puts "Health Potions - #{new_case_4.to_s}"
    attempt_conversions(new_case_4)
  end
#  puts "ended a loop"
end

attempt_conversions(master)
puts $max_hp
