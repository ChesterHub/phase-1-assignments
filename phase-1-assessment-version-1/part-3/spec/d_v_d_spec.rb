require 'spec_helper'

describe DVD do
  let(:dvd) { DVD.new(title: 'Robin Hood: Prince of Thieves', runtime: 143) }

  it 'has a title' do
    expect(dvd.title).to eq 'Robin Hood: Prince of Thieves'
  end

  it 'has a runtime' do
    expect(dvd.runtime).to eq 143
  end

  it 'does not have an artist' do
    expect{dvd.artist}.to raise_error(NameError)
  end

  it 'does not have an author' do
    expect{dvd.artist}.to raise_error(NameError)
  end

  it 'does not have a length' do
    expect{dvd.length}.to raise_error(NameError)
  end

  describe 'availability' do
    it 'can be available' do
      expect(dvd).to be_available
    end

    it 'can be checked out' do
      dvd.checkout
      expect(dvd).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      dvd.checkout
      expect(dvd).to_not be_available
    end

    it 'becomes available when returned' do
      dvd.checkout
      expect(dvd).to_not be_available

      dvd.return
      expect(dvd).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(dvd).to_not be_damaged
    end

    it "can be damaged" do
      dvd.record_damage
      expect(dvd).to be_damaged
    end

    it "can be repaired" do
      dvd.record_damage
      expect(dvd).to be_damaged

      dvd.repair
      expect(dvd).to_not be_damaged
    end
  end
end
