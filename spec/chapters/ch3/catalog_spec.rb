require 'spec_helper'

describe Catalog do
  let!(:entry) { Entry.new("fish", "chips") }
  let!(:other_entry) { Entry.new("fish", "chips") }
  let!(:catalog) { Catalog.new }
  let!(:add_entry) { catalog.add(entry) }

  it "contains an added entry" do
    catalog.contains?(entry).should be == true
  end

  it "indexes entries by name" do
    catalog.entry_for("fish").should be == entry
  end

  context "when adding an secondary entry" do
    context "with the same name as another entry" do
      it "raises an ArgumentError" do
        expect {catalog.add(other_entry)}.to raise_error(ArgumentError)
      end
    end
  end
end