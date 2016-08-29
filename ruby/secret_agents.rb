# encrypt move one letter forward
	puts "would you like to encrypt or decrypt a code?"
	code = gets.chomp
	if code = "encrypt"
		puts "enter a password"
		password = gets.chomp
		encrypt("#{password}")
	end
elsif code = "decrypt"
	puts "enter password"
	password = gets.chomp
	decrypt("#{password}")
end

def encrypt(string)
	index = 0
	secret_password = string
	while index < secret_password.length
	secret_password[index] = secret_password[index].next!
	index += 1
end
p secret_password
end

encrypt("abc")
encrypt("zed")
#decrypt reverse the word
#move forward a letter of that word
#reverse word again
#print

def decrypt(string)
	index = 0
	secret_password = string
	while index < secret_password.length
	secret_password[index] = (secret_password[index].ord - 1).chr
	index += 1
end
	p secret_password
end

decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))