# An Error in an instance of a class that includes the Exception class in its ancestor chain.

class PolicyError < RuntimeError
end

class UserPolicyError < RuntimeError
end

begin
  raise PolicyError, 'access not granted'
rescue PolicyError => e
  puts "#{e.class} : #{e.message}"
end

begin
  raise UserPolicyError, 'user unauthorised'
rescue UserPolicyError => e
  puts "#{e.class} :: #{e.message}"
end
