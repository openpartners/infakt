class ValidatePassword
    def initialize(password)
        @password = password
    end
    
    def perform
        return false if @password.length < 6 || @password.length > 24
        return false unless @password =~ /[A-Z]/
        return false unless @password =~ /[a-z]/
        return false unless @password =~ /\d/
        return false unless @password =~ /[!@#\$%&*+=:;?<>]/
        return false if @password.scan(/(.)(.*\1){2,}/).any?
        true
    end
end
