$:.unshift File.dirname(__FILE__)
require "spec_helper"

def test_dir(dirpath)
  Dir[File.expand_path("test/"+dirpath) << '/*.rb'].each do |file|
    puts "Loading test: " << file
    require file
  end
end

test_dir("./base")
