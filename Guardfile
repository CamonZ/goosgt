guard 'rspec', version:2, cli: '--color -d -fd' do
  watch('spec/spec_helper.rb') { "spec" }

  watch(%r{^spec/**/.+_spec\.rb$})
  watch(%r{^chapters/(.+)/(.+)\.rb$}) { |m| "spec/chapters/#{m[1]}/#{m[2]}_spec.rb" }
end