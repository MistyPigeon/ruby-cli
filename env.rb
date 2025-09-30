
# env.rb
# Initializes a Mercurial (hg) or Git repository in the current directory.

require 'open3'

def command_exists?(cmd)
  system("#{cmd} --version >#{File::ALT_SEPARATOR ? 'NUL' : '/dev/null'} 2>&1")
end

def init_mercurial
  if system('hg init')
    puts 'Mercurial repository initialized.'
  else
    puts 'Failed to initialize Mercurial repository.'
  end
end

def init_git
  if system('git init')
    puts 'Git repository initialized.'
  else
    puts 'Failed to initialize Git repository.'
  end
end

if command_exists?('hg')
  puts 'Mercurial detected.'
  init_mercurial
elsif command_exists?('git')
  puts 'Git detected.'
  init_git
else
  puts 'Neither Mercurial nor Git is installed on this system.'
end
