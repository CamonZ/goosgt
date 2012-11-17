require 'spec_helper'

describe Catalog do
  let!(:entry) { Entry.new("fish", "chips") }
  let!(:catalog) { Catalog.new }
  let!(:add_entry) { catalog.add(entry) }

  specify { catalog.contains?(entry).should be == true }
  specify { catalog.entry_for("fish").should be == entry }
end