class Quote
  @quotes = [
    { id: 1, gender: "M", min_age: 0, max_age: 49, company: "Young Insurance Corp.", value: 100000000, name: "Strongman Security Plan" },
    { id: 2, gender: "F", min_age: 0, max_age: 49, company: "Young Insurance Corp.", value: 100000001, name: "Freedom Plan" },
    { id: 3, gender: "M", min_age: 50, max_age: 150, company: "DLO Insurance Corp.", value: 10, name: "Deus ex Machina" },
    { id: 4, gender: "F", min_age: 50, max_age: 150, company: "DLO Insurance Corp.", value: 100, name: "Director's Plan" },
    { id: 5, min_car_age: 0, max_car_age: 4, company: "NWE Auto Insurance", value: 1000, name: "4 Wheel Investments" },
    { id: 6, min_car_age: 5, max_car_age: 10, company: "DOL Auto Insurance", value: 10000, name: "Sputtering wheels" },
  ]

  def self.fetch(params)
    car_age = Date.today.year - params[:car_year].to_i
    person_age = params[:age].to_i
    gender = params[:gender]
    @quotes.select do |q|
      ((q[:gender] == gender) && ((q[:min_age]..q[:max_age]).include? person_age) rescue false) ||
      ((q[:min_car_age]..q[:max_car_age]).include? car_age rescue false)
    end
  end
end