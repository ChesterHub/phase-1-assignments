require 'spec_helper'

describe Library do
  let(:book_1) { Book.new }
  let(:book_2) { Book.new }
  let(:cd) { CD.new }

  let(:library) { Library.new(name: 'PS 42 Robin Hood Foundation Library', location: 'Arverne, New York', items: [book_1, book_2, cd]) }

  it 'has a name' do
    expect(library.name).to eq 'PS 42 Robin Hood Foundation Library'
  end

  it 'has a location' do
    expect(library.location).to eq 'Arverne, New York'
  end

  describe 'items' do
    it 'has items' do
      expect(library.items).to match_array [book_1, book_2, cd]
    end

    it 'can add an items' do
      new_book = Book.new
      library.add_item(new_book)
      expect(library.items).to include new_book
    end

    it 'can remove an item' do
      expect(library.items).to include book_1
      library.remove_item(book_1)
      expect(library.items).to_not include book_1
    end

    it 'available and undamaged items are avaiable items' do
      allow(cd).to receive(:available?).and_return false
      allow(book_2).to receive(:damaged?).and_return true

      expect(library.available_items).to match_array [book_1]
    end

    it 'checked out and damaged items are unavailable items' do
      allow(cd).to receive(:checked_out?).and_return true
      allow(book_1).to receive(:damaged?).and_return true

      expect(library.unavailable_items).to match_array [cd, book_1]
    end
  end
end
