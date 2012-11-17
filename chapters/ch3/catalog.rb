class Catalog
  attr_reader :items

  def initialize
    @items = {}
  end

  def add(entry)
    raise ArgumentError.new if @items.keys.include?(entry.name)
    @items[entry.name] = entry
  end

  def contains?(entry)
    @items.values.include?(entry)
  end

  def entry_for(name)
    @items[name]
  end
end