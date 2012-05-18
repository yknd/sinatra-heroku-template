guard 'rspec', :version => 2, :cli => "-c -fs" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch(%r{^views/(.+)\.(slim|scss)$})
end
