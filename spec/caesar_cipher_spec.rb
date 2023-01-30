require './lib/caesar_cipher'

# puts caesar_cipher("What a string!", 5) # -> "Bmfy f xywnsl!"
describe CaesarCipher do

  describe '#encrypt' do

    context 'when the shift value is positive' do
      it 'returns the correctly encrypted message when no character is expected to loop during a shift' do
        expect(subject.encrypt('foo', 5)).to eql('ktt')
      end

      it 'returns the correctly encrypted message when at least one character is expected to loop during a shift' do
        expect(subject.encrypt('zoo', 5)).to eql('ett')
      end

      it 'returns the correctly encrypted message when all characters are expected to loop during a shift' do
        expect(subject.encrypt('xyz', 5)).to eql('cde')
      end
    end

    context 'when the shift value is negative' do
      it 'returns the correctly encrypted message when no character is expected to loop during a shift' do
        expect(subject.encrypt('foo', -5)).to eql('ajj')
      end

      it 'returns the correctly encrypted message when at least one character is expected to loop during a shift' do
        expect(subject.encrypt('bar', -1)).to eql('azq')
      end

      it 'returns the correctly encrypted message when all characters are expected to loop during a shift' do
        expect(subject.encrypt('baa', -3)).to eql('yxx')
      end
    end


  end

end