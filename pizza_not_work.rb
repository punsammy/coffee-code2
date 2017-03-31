class pizza

  def initialize(toppings)
    @toppings = toppings
    @cooked = false
      #when pizza is first initialized it is uncooked
    @cuts_remaining = 0
    @slices = 0
  end

  def bake
    @cooked = true
      #when it is baked it is cooked. Therefor true
    @slices = 1
    @cuts_remaining = 3
      return @cooked
  end

  def cut
    unless @cooked
      puts "ERROR:Can't cut a raw pizza"
          #return so it does not proceed!!!
      return
    end

    #Do the cutting
    if @cuts_remaining == 3
      @slices += 1
      @cuts_remaining -= 1
    elsif @cuts_remaining == 2 || @cuts_remaining == 1
      @slices += 2
      @cuts_remaining -= 1
    elsif @cuts_remaining == 0
      puts" ERROR: Pizza is already too sliced!"
  end

    return @slices
end

  def eat
    unless @cooked
      puts "ERROR: Can't eat a raw pizza"
      return
    end

    if @slices > 0
      @slices -=1
      puts "Nom!"
      #Eat a slice
    else
      puts "ERROR: No more pizza left :("
    end

    return @slices
  end


end
