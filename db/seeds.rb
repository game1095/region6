# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Departments
Department.create(id: 1 , name: 'ส่วนอำนวยการและบุคคล' , short: 'อบ.')
Department.create(id: 2 , name: 'ส่วนการเงินและบัญชี' , short: 'กง.')
Department.create(id: 3 , name: 'ส่วนเทคโนลยีสารสนเทศ' , short: 'รส.')
Department.create(id: 4 , name: 'ส่วนทรัพย์สินและพัสดุ' , short: 'ทพ.')
Department.create(id: 5 , name: 'ส่วนบริหารงาน e-Commerce' , short: 'บง.')
Department.create(id: 6 , name: 'ส่วนระบบงานนำจ่าย' , short: 'นจ.')
Department.create(id: 7 , name: 'ส่วนรับฝากและส่งต่อ' , short: 'รต.')
Department.create(id: 8 , name: 'ส่วนตลาดและลูกค้าธุรกิจ' , short: 'ตธ.')
Department.create(id: 9 , name: 'ส่วนควบคุมคุณภาพ' , short: 'คภ.')

# Level
Level.create(id: 1 , name: 'Admin')
Level.create(id: 2 , name: 'หัวหน้าส่วน')
Level.create(id: 3 , name: 'เจ้าหน้าที่ ปข.6')
Level.create(id: 4 , name: 'หัวหน้าที่ทำการไปรษณีย์')
Level.create(id: 5 , name: 'พนักงานไปรษณีย์')

# Position
Position.create(id: 1 , name: 'Admin')
Position.create(id: 2 , name: 'หนส.')
Position.create(id: 3 , name: 'หน.ปณ.')
Position.create(id: 4 , name: 'พนักงาน')
Position.create(id: 5 , name: 'ลูกจ้างประจำ')
Position.create(id: 6 , name: 'ลูกจ้าง')
Position.create(id: 7 , name: 'ผู้รับจ้างทำของ')

# Confidential
Confidential.create(id: 1 , name: 'ปกติ')
Confidential.create(id: 2 , name: 'ด่วน')
Confidential.create(id: 3 , name: 'ด่วนมาก')
Confidential.create(id: 4 , name: 'ด่วนที่สุด')
