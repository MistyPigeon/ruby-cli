# generate.rb
# Generates a default README.md with the project name as the header.

require 'fileutils'

# Get the current directory name as the project name
project_name = File.basename(Dir.pwd)

readme_content = "# #{project_name}\n"

File.write('README.md', readme_content)
puts "README.md generated with project name '#{project_name}'."
require './main'
