class CaesarCipher

  def encrypt(message, offset)
    
    encrypted_message = ''

    message.each_char do |ch|

      ch_ord = ch.ord

      if ch_ord.between?(65, 90) || ch_ord.between?(97, 122)

        ord_base = ch_ord <= 90 ? 65 : 97

        ord_shifted = ch_ord + offset

        shift_from_base = (ord_shifted - ord_base) % 26

        ord_final = ord_base + shift_from_base

        encrypted_message << ord_final.chr

      else

        encrypted_message << ch

      end

    end

    return encrypted_message

  end

end