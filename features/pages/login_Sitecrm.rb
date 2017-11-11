class Login <SitePrism::Page

	set_url "https://demo.suiteondemand.com/"

	element :username_field, "#user_name"
	element :password_field, "#user_password"
	element :login_btn, "#bigbutton"

	def login(username, password)
		username_field.set(username)
		password_field.set(password)
		login_btn.click
		
	end
	
end	