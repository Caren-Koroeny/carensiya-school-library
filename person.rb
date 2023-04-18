class Person
    attr_accessor :name, :age
    attr_reader :id
  
    def initialize(age, name = "Unknown", parent_permission: true)
      @id = "#{Random.new().rand(1000)}-#{Random.new().rand(1000)}-#{Random.new().rand(1000)}"
      @age = age
      @name = name
      @parent_permission = parent_permission
     
    end
  
    def of_age?
      @age >= 18
    end
  
    private
  
    def can_use_services?
      (@age >= 18 || @parent_permission) ? true : false
    end
  end
  