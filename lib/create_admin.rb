User.transaction do
User.create( :name => 'admin', 
             :password =>'admin', 
             :password_confirmation => 'admin',
             :address => '115 E Cranford ave., Valdosta, GA')

user_id = (User.find_by(name: 'admin')).id
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url: open('app/assets/images/cs.jpg'),    
  price: 36.00, 
  user_id: user_id)
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: open('app/assets/images/ruby.jpg'),
  price: 49.95,
  user_id: user_id)
# . . .

Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: open('app/assets/images/rtp.jpg'),
  price: 34.95,
  user_id: user_id)
end
