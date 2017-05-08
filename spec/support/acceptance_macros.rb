module AcceptanceMacros
  def add_network(name)
    @page = SettingsPage.new @driver
    @page.wifi_title.click

    @page = WiFiPage.new @driver
    @page.add_network.click

    @page = AddNetworkPage.new @driver
    @page.network_name.send_keys name
    @page.save.click

    @page = WiFiPage.new @driver
  end

  def open_saved_networks_page
    @page.configure.click

    @page = ConfigureWifiPage.new @driver
    @page.saved_networks.click

    @page = SavedNetworksPage.new(@driver)
  end
end