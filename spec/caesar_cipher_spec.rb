require './lib/caesar_cipher'

# puts caesar_cipher("What a string!", 5) # -> "Bmfy f xywnsl!"
describe CaesarCipher

  describe '#encrypt' do

    it 'returns the message with all characters shifted by given number' do
      expect(subject.encrypt('foo', 5)).to eql('ktt')
    end

  end

end