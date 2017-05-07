require_relative 'abstract_page'

class SettingsPage < AbstractPage
  def header
    @driver.xpath(%Q(//#{View}))
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def wireless_and_networks
    @driver.xpath(%q(//*[@text="Wireless & networks"]))
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
  def wifi_title
    @driver.xpath(%Q(//#{View}[@text = "#{WiFi}"]))
  end

  def wifi_icon
    @driver.xpath(%Q(//#{View}[@text = "#{WiFi}"]/../../#{Icon}))
  end

  def wifi_network_name
    @driver.xpath(%Q(//#{View}[@text = "#{WiFi}"]/../#{View}[2]))
  end
  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
end