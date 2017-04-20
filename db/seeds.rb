# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

all_details = [
  {content: "Access to O'Reilly Partner discouts", href: "http://www.oreilly.com/partner/"},
  {content: "Free Community Desk Reservations", href: "http://fourathens.skedda.com"},
  {content: "Reciprocal memberships with Four Athens partners", href: ""},
  {content: "ATDC Educate Membership", href: "http://atdc.org/join-atdc-educate-program/"},
  {content: "Invitations to Members Only Events", href: ""},
  {content: "Founders' Circle matching", href: ""},
  {content: "Access to the Four Athens library", href: ""}
]
seedling_details = [
  {content: "Link and profile on fourathens.com", href: ""},
  {content: "Advisor and mentor matching", href: ""},
  {content: "Membership in the Four Athens Book Club", href: ""},
  {content: "Mailbox services", href: ""},
  {content: "Free job postings on fourathens.com", href: ""},
  {content: "10% discount on yearly retreat", href: ""},
  {content: "10% discount on Four Athens Code Classes", href: ""}
]
sapling_details = [
  {content: "Link and profile on fourathens.com", href: ""},
  {content: "Advisor and mentor matching", href: ""},
  {content: "Membership in the Four Athens Book Club", href: ""},
  {content: "Introductions and mentoring with the Four Athens Investor network", href: ""},
  {content: "Assistance with becoming an ATDC Accelerate member", href: ""},
  {content: "Mailbox services", href: ""},
  {content: "Free job postings on fourathens.com", href: ""},
  {content: "15% discount on twice yearly retreat", href: ""},
  {content: "25% discount on partner workshops (leadership development, operations and management, professional development, technology)", href: ""},
  {content: "10% discount on Four Athens Code Classes", href: ""}
]
canopy_details = [
  {content: "Link and profile on fourathens.com", href: ""},
  {content: "Advisor and mentor matching", href: ""},
  {content: "Membership in the Four Athens Book Club", href: ""},
  {content: "Introductions and mentoring with the Four Athens Investor network", href: ""},
  {content: "Strategic Partnership development with ATDC companies", href: ""},
  {content: "Mailbox services", href: ""},
  {content: "Free job postings on fourathens.com", href: ""},
  {content: "15% discount on quarterly retreat", href: ""},
  {content: "25% discount on partner workshops (leadership development, operations and management, professional development, technology)", href: ""},
  {content: "10% discount on Four Athens Code Classes", href: ""},
  {content: "Participation in the Athens Talent Partnership, focusing on recruiting and retention of talent and jobs in Athens", href: ""},
]
individual_monthly = Plan.create(name: "Individual", price: 2500, frequency: 'monthly')
all_details.each { |det| individual_monthly.plan_details.create(det) }
individual_yearly = Plan.create(name: "Individual", price: 25000, frequency: 'yearly')
all_details.each { |det| individual_yearly.plan_details.create(det) }
seedling_monthly = Plan.create(name: "Seedling", price: 10000, frequency: 'monthly')
all_details.each { |det| seedling_monthly.plan_details.create(det) }
seedling_details.each { |det| seedling_monthly.plan_details.create(det) }
seedling_yearly = Plan.create(name: "Seedling", price: 100000, frequency: 'yearly')
all_details.each { |det| seedling_yearly.plan_details.create(det) }
seedling_details.each { |det| seedling_yearly.plan_details.create(det) }
sapling_monthly = Plan.create(name: "Sapling", price: 25000, frequency: 'monthly')
all_details.each { |det| sapling_monthly.plan_details.create(det) }
sapling_details.each { |det| sapling_monthly.plan_details.create(det) }
sapling_yearly = Plan.create(name: "Sapling", price: 250000, frequency: 'yearly')
all_details.each { |det| sapling_yearly.plan_details.create(det) }
sapling_details.each { |det| sapling_yearly.plan_details.create(det) }
canopy_monthly = Plan.create(name: "Canopy", price: 60000, frequency: 'monthly')
all_details.each { |det| canopy_monthly.plan_details.create(det) }
canopy_details.each { |det| canopy_monthly.plan_details.create(det) }
canopy_yearly = Plan.create(name: "Canopy", price: 600000, frequency: 'yearly')
all_details.each { |det| canopy_yearly.plan_details.create(det) }
canopy_details.each { |det| canopy_yearly.plan_details.create(det) }
