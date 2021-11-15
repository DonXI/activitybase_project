Given /^a valid employee$/ do
@employee_login_test_success =  User.create!({
  :username => "11111", 
  :password_digest => "11111", 
  :password_confirmation => "11111",
  :name => 'onpinya', 
  :surname => 'phok', 
  :position => 'employee', 
  :department1 => 'ไก่ตกราว', 
  :department2 => '', 
  :department3 => ''
})
@employee_login_test_success.password = "11111"
@employee_login_test_success.password_confirmation = "11111"
@employee_login_test_success.save
all_humen = [
  {:username => '11111' , :password_digest => '11111' , :name => 'onpinya' , :surname => 'phok' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '22222' , :password_digest => '22222' , :name => 'donyapa' , :surname => 'praman' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '33333' , :password_digest => '33333' , :name => 'chanda' , :surname => 'soon' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '44444' , :password_digest => '44444' , :name => 'thatphoom' , :surname => 'pao' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''}
]

password = ['11111','22222','33333','44444']

all_humen.each do |humen|
  User.create(humen)
end

password.each do |password|
  a = User.find_by_username(password)
  a.password = password
  a.password_confirmation = password
  a.save
end

user_id = [1,2]
user_id.each do |id|
  u = User.find(id)
  plan = Plan.create(:date => "2021-11-18".to_time , :time_in => "2021-11-18 9:00".to_time,
    :time_out => "2021-11-18 18:00".to_time , :OT => 2)
  u.plans << plan
end
end

Given /^a valid leader$/ do
@leader_login_test_success = User.create!({
  :username => "00001", 
  :password_digest => "00001", 
  :password_confirmation => "00001",
  :name => 'suphinya', 
  :surname => 'wu', 
  :position => 'leader', 
  :department1 => 'ไก่ตกราว', 
  :department2 => 'ถอนขนไก่', 
  :department3 => 'เชือดไก่'
  })
@leader_login_test_success.password = "00001"
@leader_login_test_success.password_confirmation = "00001"
@leader_login_test_success.save

all_humen = [
  {:username => '11111' , :password_digest => '11111' , :name => 'onpinya' , :surname => 'phok' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '22222' , :password_digest => '22222' , :name => 'donyapa' , :surname => 'praman' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '33333' , :password_digest => '33333' , :name => 'chanda' , :surname => 'soon' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''},
  {:username => '44444' , :password_digest => '44444' , :name => 'thatphoom' , :surname => 'pao' , :position => 'employee' , 
    :department1 => 'ไก่ตกราว' , :department2 => '' , :department3 => ''}
]

password = ['11111','22222','33333','44444']

all_humen.each do |humen|
  User.create(humen)
end

password.each do |password|
  a = User.find_by_username(password)
  a.password = password
  a.password_confirmation = password
  a.save
end

user_id = [1,2,3]
user_id.each do |id|
  u = User.find(id)
  plan = Plan.create(:date => "2021-11-18".to_time , :time_in => "2021-11-18 9:00".to_time,
    :time_out => "2021-11-18 18:00".to_time , :OT => 2)
  u.plans << plan
end

end

