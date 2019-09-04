customer_attributes = [
  { name: 'Andrew', phone: '+7-123-456-12-90', description: 'first customer' },
  { name: 'Dmitry', phone: '+7-567-234-23-34', description: 'second customer' },
  { name: 'Sergey', phone: '+7-945-567-45-56', description: 'third customer' },
  { name: 'Jhon', phone: '+7-456-234-56-67', description: 'fourth customer' },
  { name: 'Liza', phone: '+7-245-687-67-23', description: 'fifth customer' },
  { name: 'Anna', phone: '+7-333-555-23-21', description: 'sixth customer' }
]

customer_attributes.each do |attr|
  Customer.where(attr).first_or_create
end
