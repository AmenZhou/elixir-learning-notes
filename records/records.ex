defmodule Planemo do
  require Record

  Record.defrecord :planemo, [name: "", gravity: 0, diameter: 0, distance_from_sun: 0]
end

defmodule Tower do
  require Record

  Record.defrecord :tower, [location: "", height: 20, planemo: :earth, name: ""]
end

defmodule User do
  require Record
  Record.defrecord :user, [name: "meg", age: "25"]
end

#Console
tower1 = Tower.tower()
#=>Tower[location: "", height: 20, planemo: :earth, name: ""]

#create a record
tower2 = Tower.tower(location: "Grand Canyon")
#=>{:tower, "Grand Canyon", 20, :earth, ""}

#get value of the Record
Tower.tower(tower2, location)
#=>"Grand Ganyon"

#update the record
Tower.tower(tower2, location: 'NYC')
#=>{:tower, "NYC", 20, :earth, ""}


