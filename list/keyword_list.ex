atomic_weights = [hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
Keyword.get(atomic_weights, :hydrogen) #=> 1.008
Keyword.get(atomic_weights, :neon) #=> nil
Keyword.get(atomic_weights, :neon, 0) #=> 0
Keyword.get!(atomic_weights, :neon) #=> KeyError
Keyword.has_key?(atomic_weights, :carbon) #=> true
#To add a new value
Keyword.put_new(atomic_weights, :helium, 4.0026)
Keyword.put(atomic_weights, :helium, 4.0026)
#Explain this method
#Keyword.put_new(list, elem)
if Keyword.has_key?(atomic_weights, :helium) do
  Do nothing
else
  Keyword.put(atomic_weights, :helium, 4.0026)
end

#Keyword.put(list, elem)