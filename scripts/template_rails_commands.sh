# generate scaffold for a resource has a relationship with another resouce
bin/rails generate scaffold loan borrower:references book:references

bin/rails generate scaffold folder title:string user:references
# I want user to have many folders and then folders to have many npcs

# (b) inspect routes
# (c) inspect controller
# (d) inspect model
# // rails knew to add these!
# belongs_to :borrower
# belongs_to :book

# (e) inspect serializer
# // rails added these too!
# // will go to these objects and serialize out all of the data in these resources as well (entire borrower and book objects)
# // but be careful you don’t serialize user info out
# // chris replaces with: attributes :id, :date, :borrower_id, :book_id —> until he proves that that’s not enough
# has_one :borrower
# has_one :book

# HOWEVER, BORROWER AND BOOK MODEL WERE NOT UPDATED TOO! WE NEED TO UPDATE THOSE MODELS WITH THEIR “has_many” MACROs
# run db:migrate
