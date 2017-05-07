$config   = {}
filename = '../appium.txt'

File.readlines(filename).each do |line|
  line = line.split('=').map(&:strip).map{|l| l.tr('\'"', '')}
  $config[line[0]] = line[1] if line[1]
end
