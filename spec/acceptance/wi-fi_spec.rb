require File.expand_path('spec/spec_helper')

describe 'WiFi page' do
  before do
    @page = SettingsPage.new @driver
    @page.wifi_title.click
    @page = WiFiPage.new @driver
  end

  it 'Have a title' do
    expect(@page.header.text).to match WiFiPage::WiFi
  end

  it 'is On' do
    expect(@page.switcher.text).to match 'On'

    # check that there's no message 'To see available networks, turn Wi-Fi on.'
    expect{@page.turn_on_text}.to raise_error(WiFiPage::NoElement)

    # check that network is displayed and its status is 'connected'
    expect(@page.network_title('WiredSSID').text).to match('WiredSSID')
    expect(@page.network_status('WiredSSID').text).to match('Connected')
  end

  it 'can be turned Off' do
    # switcher before click is in On state
    @page.switcher.click

    # check that switcher in 'Off' state
    expect(@page.switcher.text).to match 'Off'
    # check that message 'To see available networks, turn Wi-Fi on.'
    # appeared on the page
    expect(@page.turn_on_text).to be_truthy
    # check that network it not displayed
    expect{@page.network_title('WiredSSID').text}.to raise_error(WiFiPage::NoElement)
  end

  it 'can be turned on' do
    # switcher before click is in Off state
    @page.switcher.click

    # check that switcher in On state
    expect(@page.switcher.text).to match 'On'
    expect{@page.turn_on_text}.to raise_error(WiFiPage::NoElement)

    # check that network is displayed on page
    expect(@page.network_title('WiredSSID').text).to match('WiredSSID')
    expect(@page.network_status('WiredSSID').text).to match('Connected')
  end
end