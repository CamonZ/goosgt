require 'spec_helper'

describe Catalog do
  let!(:entry) { Entry.new("fish", "chips") }
  let!(:catalog) { Catalog.new }
  let!(:add_entry) { catalog.add(entry) }

  it "contains an added entry" do
    catalog.contains?(entry).should be == true
  end

  it "indexes entries by name" do
    catalog.entry_for("fish").should be == entry
  end
end