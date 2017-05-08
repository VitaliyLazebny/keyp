require File.expand_path('spec/spec_helper')

# Precondition (before block):
#   added network
#
# Here's testing following:
#   network is displayed
#   it's security config if correct
#   it can be successfully removed
#
describe 'Saved Networks' do
  before(:all) do
    @network = 'Test Network'

    add_network(@network)
    open_saved_networks_page
  end

  it 'allows user see added network' do
    # check network presence on page
    expect(@page.network(@network).text).to match @network
  end

  it 'allows user see network details on pop-up' do
    # open network popup
    @page.network(@network).click

    # check network popup
    expect(@page.network(@network).text).to match @network
    expect(@page.security_label.text).to match 'Security'
    expect(@page.security_value.text).to match 'None'

    #close network popup
    @page.cancel.click

    # check that network remains present
    expect(@page.network(@network).text).to match @network
  end

  it 'allows user remove network' do
    # check that network present
    expect(@page.network(@network).text).to match @network

    # open network pop-up
    @page.network(@network).click
    # remove network
    @page.forget.click

    # check that network removed successfully
    expect{@page.network(@network)}.to raise_error(SavedNetworksPage::NoElement)
  end

end

