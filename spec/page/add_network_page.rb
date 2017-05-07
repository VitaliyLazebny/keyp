require_relative 'abstract_page'

class AddNetworkPage < AbstractPage
  def header
    @driver.xpath(%Q(//#{View}))
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def title
    @driver.text 'Add network'
  end

  def network_name_label
    @driver.text 'Network name'
  end

  #Text by default: 'Enter the SSID'
  def network_name
    @driver.xpath %Q(//#{Input})
  end

  def save
    @driver.button 'Save'
  end

  def cancel
    @driver.button 'Cancel'
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -
  # Security section (password, etc.)

  def security_label
    @driver.text 'Security'
  end

  def security
    @driver.xpath(%Q(//#{Dropdown}))
  end

  def security_none
    @driver.text 'None'
  end

  def security_wep
    @driver.text 'WEP'
  end

  def security_wpa
    @driver.text 'WPA/WPA2 PSK'
  end

  def security_802
    @driver.text '802.1x EAP'
  end

  def security_show_password
    @driver.text 'Show password'
  end
end