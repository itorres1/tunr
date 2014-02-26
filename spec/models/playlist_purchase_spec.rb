require 'spec_helper'

describe PlaylistPurchase do
  it { should validate_presence_of(:playlist) }
  it { should belong_to(:playlist) }
  it { should validate_presence_of(:purchase) }
  it { should belong_to(:purchase) }

  let(:playlist) { FactoryGirl.create(:playlist) }
  let(:users_purchase) { FactoryGirl.create(:purchase, user: playlist.user) }
  let(:another_users_purchase) { FactoryGirl.create(:purchase) }

  it "doesn't add songs which the user does not own" do
    PlaylistPurchase.create(playlist: playlist, purchase: users_purchase)
    expect(playlist.purchases).to include(users_purchase)

    PlaylistPurchase.create(playlist: playlist, purchase: another_users_purchase)
    expect(playlist.purchases).to_not include(another_users_purchase)
  end
end