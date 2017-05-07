require File.expand_path('spec/spec_helper')

describe 'Settings page' do
  before { @page = SettingsPage.new @driver }

  it "Have Title" do
    expect(@page.header.text).to match 'Settings'
  end

  it "Have Wireless section" do
    expect(@page.wireless_and_networks.text).to match 'Wireless & networks'
  end

  it "Have WiFi subsection" do
    expect(@page.wifi_title.text).to match SettingsPage::WiFi
    expect(@page.wifi_icon).to be_truthy
  end

  it "Have current WiFi network connected" do
    expect(@page.wifi_network_name.text).to_not match 'Disabled'
  end
end
