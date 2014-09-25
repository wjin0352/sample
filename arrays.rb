class Company
  attr_accessor :stockPrice, :companyName, :companyLogoName, :products

  def initialize(stockPrice, companyName, companyLogoName)
    @stockPrice = stockPrice
    @companyName = companyName
    @companyLogoName = companyLogoName
  end


end


class Product
  attr_accessor(:productName, :productLogo, :productURL)

  def initialize(productName, productLogo, productURL)
    @productName = productName
    @productLogo = productLogo
    @productURL = productURL
  end
end

# 1. Create an array of 3 companies – Apple, Google and Microsoft
# print each company with loop
companies = ["Apple", "Google", "Microsoft"]

for i in companies
  puts i
end
# add facebook to array
companies.push("facebook")

puts companies[2]
# print size of array
puts companies.length
puts companies.size

# 6) create object of type hash with key value pairs
stuff = Hash.new
stuff = {:AAPL => "Apple", :GOOG => "Google", :MSFT => "Microsoft" }
puts stuff

puts stuff[:MSFT]
stuff.merge!(:FB => "Facebook")
puts stuff[:FB]
puts stuff
stuff.delete(:AAPL)
puts stuff

puts stuff.length

company1 = Company.new("1000", "Google", "google.png" )

p company1
puts company1.companyLogoName
puts company1.companyName
puts company1.stockPrice

# use the object to access the products in the class
company1.products = ["AdWords", "AdSense", "GoogleDocs"]
# to add one at a time do <<
company1.products << "Gmail" << "blah"
#puts products.inspect
# lots of ways to add on to array
company1.products.push("eghh")


puts company1.products.inspect
puts company1.products[0]
puts company1.products[1]
puts company1.products[2]
p company1.products

company1.products.delete("GoogleDocs")
p company1.products

# Create two instances of the Product class
product1 = Product.new("bmw", "logo", "http://www.bmw.com")
product2 = Product.new("subaru", "icon", "http://www.subaru.com")

# Add these two products objects to the array property in
# Company class
# products was a array for class Company, we used << to add product1 object
# properties to that array, as you can see in the array the last element
# is filled with productname, logo, url
company1.products<<product1
p company1.products
p company1.products.length # gives 6 elements
p company1