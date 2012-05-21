if Rails.env.development?

Product.destroy_all
Brand.destroy_all

a = Brand.create(name: "Apple", logo: "Apple_Logo")
d = Brand.create(name: "Dell", logo: "Dell_Logo")



# product = Product.create(name: 'Macbook Air', price: 999)
# product = Product.create(name: 'Macbook Pro', price: 1999)
# product = Product.create(name: 'iMac', price: 2999)
# product = Product.create(name: 'iPad', price: 399)

a.products.create name: 'Macbook Air', price: 999
a.products.create name: 'Macbook Pro', price: 1999
a.products.create name: 'iMac', price: 2999
a.products.create name: 'iPad', price: 399

d.products.create name: 'Inspiron', price: 400


end