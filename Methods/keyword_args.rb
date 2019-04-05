
#k: v
def produce_spaceship(type= :freighter, size: :m, engine_count: 2)

p type # has default value :freighter but is not a keyword param
p size # is a keyword param with default value :m
p engine_count # is a keyword param with default value 2

end

produce_spaceship(:freighter, size: :L)
# :freighter
# :L
# 2

#changing the order
produce_spaceship(:freighter, engine_count: 4, size: :xl)
# :freighter
# :xl
# 4


#custom parameters for (non specified) k: v
def produce_spaceship(type= :freighter, size: :m, **custom_params)

  p type # has default value :freighter but is not a keyword param
  p size # is a keyword param with default value :m
  p custom_params # is a keyword param with default value 2
end

produce_spaceship(:freighter, engine_count: 4, size: :xl, upgrades: :yes)
# :freighter
# :xl
# {:engine_count=>4, :upgrades=>:yes}
