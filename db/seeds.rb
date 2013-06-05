# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user = User.create(name: 'talal', email: 'talal@foo.com')

@ad = Ad.create(make: 'Honda')
@ad.user = @user
@ad.save

#Comment.create(text: 'hey, this is a nifty comment!', ad: ads.first)
@com = Comment.create(text: 'hey, this is a nifty comment!')
@com.ad = @ad
@com.user = @user
@com.save

@photo = Photo.create(caption: 'photo of a lion')
@photo.ad = @ad
@photo.user = @user
@photo.save

@fave = Favorite.create
@fave.ad = @ad
@fave.user = @user
@fave.save
