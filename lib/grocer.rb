def find_item_by_name_in_collection(name, collection)
  collection.each_index do |item_index|
    if collection[item_index].fetch(:item) == name
      return collection[item_index]
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each_index do |item_index|
    # if the given item is not currently in the new cart, shovel its hash into the new cart
    # and add a count key with a value of 1 to the entry, which is the last element in the array since we just added it
    if !find_item_by_name_in_collection(cart[item_index][:item], new_cart)
      new_cart << find_item_by_name_in_collection(cart[item_index][:item])
      new_cart[-1][:count] = 1
    end
    # if the given item IS currently in the new cart
    
  end
end


  