require_relative 'abstract_page'

class WiFiPage < AbstractPage
  # expected text is "Wi\u8209Fi"
  def header
    @driver.xpath(%Q(//#{View}))
  end

  def configure
    @driver.xpath(%Q(//#{View}[@content-desc="Configure"]))
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def network_title(name)
    @driver.xpath(%Q(//#{View}[@text="#{name}"]))
  end

  def network_status(name)
    @driver.xpath(%Q(//#{View}[@text="#{name}"]/../#{View}[2]))
  end

  def network_icon(name)
    @driver.xpath(%Q(//#{View}[@text="#{name}"]/../#{View}[2]))
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def add_network
    @driver.text('Add network')
  end

  #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def switcher
    @driver.find_element(class: 'android.widget.Switch')
  end

  # -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

  def turn_on_text
    @driver.text("To see available networks, turn #{WiFi} on.")
  end
end