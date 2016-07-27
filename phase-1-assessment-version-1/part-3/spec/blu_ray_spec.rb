require 'spec_helper'

describe BluRay do
  let(:blu_ray) { BluRay.new(title: 'Robin Hood: Men in Tights', runtime: 104) }

  it 'has a title' do
    expect(blu_ray.title).to eq 'Robin Hood: Men in Tights'
  end

  it 'has a runtime' do
    expect(blu_ray.runtime).to eq 104
  end

  it 'does not have an author' do
    expect{blu_ray.author}.to raise_error(NameError)
  end

  it 'does not have a length' do
    expect{blu_ray.length}.to raise_error(NameError)
  end

  it 'does not have an artist' do
    expect{blu_ray.artist}.to raise_error(NameError)
  end

  describe 'availability' do
    it 'can be available' do
      expect(blu_ray).to be_available
    end

    it 'can be checked out' do
      blu_ray.checkout
      expect(blu_ray).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      blu_ray.checkout
      expect(blu_ray).to_not be_available
    end

    it 'becomes available when returned' do
      blu_ray.checkout
      expect(blu_ray).to_not be_available

      blu_ray.return
      expect(blu_ray).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(blu_ray).to_not be_damaged
    end

    it "can be damaged" do
      blu_ray.record_damage
      expect(blu_ray).to be_damaged
    end

    it "can be repaired" do
      blu_ray.record_damage
      expect(blu_ray).to be_damaged

      blu_ray.repair
      expect(blu_ray).to_not be_damaged
    end
  end
end
