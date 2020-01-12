def pet_shop_name(shop)
  return @pet_shop[:name]
end

def total_cash(total)
  return total[:admin][:total_cash]
end

#This function works for both addition and subtraction.#
def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(name)
  return name[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_sold)
  return shop[:admin][:pets_sold] += number_sold
end

def stock_count(shop)
  return shop[:pets].count
end

#This function works for both found & not found.#
def pets_by_breed(shop, type)
  count = []
  for pet in shop[:pets]
    if pet[:breed] == type
      count.push(pet)
    end
  end
  return count
  if count == 0
    p "No stock found for this breed."
  end
end

# This function works for both pet found & not found.#
def find_pet_by_name(shop, pet_name)
  pet_present = []
  for pet in shop[:pets]
    if pet[:name] == pet_name
      pet_present.push(pet)
    end
  end
  return pet_present[0]
  if pet_present == 0
    p "No pet by this name found."
  end
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop,new_pet)
  return shop[:pets].push(new_pet)
  #stock_count function returns count
end

def customer_cash(customer_index)
  monies = 0
  for customer in @customers
    monies = customer_index[:cash]
  end
  return monies
end

def remove_customer_cash(customer, figure)
  return cash = customer[:cash] -= figure
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer,new_pet)
  return customer[:pets].push(new_pet)
end
