#
# Parse appium config file to allow use it for automation
# (same ini-like file for arc tool, for rspec, etc)
#
$config   = {}
filename = '../appium.txt'

File.readlines(filename).each do |line|
  line = line.split('=').map(&:strip).map{|l| l.tr('\'"', '')}
  $config[line[0]] = line[1] if line[1]
end
