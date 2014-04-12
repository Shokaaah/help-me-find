class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i
	validates :password, confirmation: true, length: {minimum: 6}
	validates :name, presence: {message: "Ydfasddas"}
	validates :email, presence: true ,format: {with: VALID_EMAIL_REGEX, message: 'Некоректный email'}

end
