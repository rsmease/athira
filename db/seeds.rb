# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
Review.destroy_all
Company.destroy_all
Leader.destroy_all
ImageCarousel.destroy_all
AdminUser.destroy_all

service1 = Service.create!(
    name: 'Finance & Accounting Transformation',
    short_description: 'Build a financial function for operational excellence',
    long_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet porttitor tortor. Maecenas mollis rhoncus lacus sed vehicula. Duis laoreet fermentum ex, nec scelerisque mauris cursus ac. Mauris vel euismod quam. Etiam auctor sapien cursus enim feugiat mattis. Aenean ac orci sit amet metus porta feugiat euismod in ligula. Curabitur sagittis rhoncus purus vitae feugiat. Cras volutpat id eros sit amet lobortis. Etiam sollicitudin lacus quis mauris mattis, nec aliquam nulla scelerisque. Curabitur lacinia at diam tincidunt porta. Duis eu facilisis erat, eget porta nunc.',
    icon_url: 'http://www.gdurl.com/ArQK'
)

service2 = Service.create!(
    name: 'Tools for Management',
    short_description: 'Design and deploy effective tools for decision making',
    long_description: 'Proin blandit quam eros, nec mollis nibh scelerisque sed. Vestibulum auctor condimentum dolor nec pharetra. Aenean tempor mattis feugiat. Nunc dictum tincidunt velit, id faucibus lorem hendrerit id. Maecenas sed mollis sem, ac suscipit nisl. Nam placerat nulla vitae massa finibus hendrerit. Suspendisse semper risus augue, non efficitur diam tincidunt ullamcorper.',
    icon_url: 'http://www.gdurl.com/ArQK'
)

service3 = Service.create!(
    name: 'Business Development',
    short_description: 'Identify and explore business growth opportunities',
    long_description: 'Fusce pretium, sem a ullamcorper auctor, velit magna vestibulum turpis, ut posuere mi ex a libero. Sed molestie venenatis turpis, non luctus erat porta id. Nullam sed orci et dolor hendrerit rhoncus sit amet in nisi. Morbi nunc dui, bibendum vel erat sed, lacinia mattis metus. Nam volutpat efficitur sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus eget ex pulvinar, euismod quam id, imperdiet libero.',
    icon_url: 'http://www.gdurl.com/ArQK'
)

service4 = Service.create!(
    name: 'Diagnostic and Advisory Services',
    short_description: 'Assess your business and implement best practices for growth',
    long_description: 'Phasellus at semper sapien. Nam efficitur venenatis tortor, at convallis neque pharetra id. Ut a sapien ac velit condimentum dignissim. Donec sollicitudin consequat pulvinar. Etiam rhoncus ex id pharetra laoreet. In vehicula est a purus pulvinar, eu vulputate elit scelerisque. Nullam eu maximus felis, et vulputate massa. Duis faucibus sagittis est, vel rhoncus nulla ornare ut. Sed pellentesque orci ac arcu vulputate, eget venenatis nisl hendrerit.',
    icon_url: 'http://www.gdurl.com/ArQK'
)

review1 = Review.create!(
    reviewer_name: 'Scott Prost',
    reviewer_description: 'Sr. Director of Operations',
    reviewer_location: 'Company, LLC',
    title: 'Review',
    body: 'Athira did wonders for our company. Our company culture has been focused and driven towards our new goals.',
    logo_url: 'http://www.gdurl.com/St0Q'
)

review2 = Review.create!(
    reviewer_name: 'Wen Gao Li',
    reviewer_description: 'Sr. Director of Operations',
    reviewer_location: 'Company, LLC',
    title: 'Review',
    body: 'After a year of working with Athira, I have saved hundreds of thousands of dollars in scaling costs for services that I would have otherwise spent on pricey consultants.',
    logo_url: 'http://www.gdurl.com/l7k6'
)

review3 = Review.create!(
    reviewer_name: 'Maria Lorenza',
    reviewer_description: 'Sr. Director of Operations',
    reviewer_location: 'Company, LLC',
    title: 'Review',
    body: 'I have nothing but wonderful things to say about my time working with Ria.',
    logo_url: 'http://www.gdurl.com/xWEt'
)

company1 = Company.create!(
    name: 'Athira',
    headline: 'Light The Fire, Grow Your Dream',
    short_description: 'Athira crafts business support solutions to help your organization reach its goals. Our approach is to understand your business’s growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully.',
    long_description: 'Athira is a different kind of company. We craft business support solutions to help entrepreneurial organizations scale to meet new and more ambitious goals. Our approach is to quickly understand your growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully. Our style is centered on collaboration and creativity, but with a dose of realism. We listen to our clients, help them build a strategy for growth, and provide them with the tools to make clear and effective decisions. Backed by hard-won experience and thought leadership, you can trust Athira to kindle new life into your organization.',
    splash_image_url: 'https://images.unsplash.com/photo-1473041117018-269bc8c130de?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cad94ead49f0eefefec9b33067633fb8&auto=format&fit=crop&w=1908&q=80'
)

leader1 = Leader.create!(
    name: 'M Ria Shah',
    title: 'Owner',
    description: 'Ria is the founder/managing director, true GSD’er and creative mind at Athira. She is a global finance and operations professional with 20 years of experience with international nonprofit, digital marketplace, higher education, auditing, and consulting -- specializing in the startup and growth phase. She is dedicated to helping entrepreneurial organizations achieve strategic growth with a goal of having a measurable and meaningful impact in short period of time. Ria has served as a CFO, helped decentralize an international nonprofit, served on the board of Asian American LEAD, lectured on all things finance, and did time consulting for a Big 4 firm. Ria has a BS in Accounting and Finance and an MS in Accounting from Trinity University. She’s also a die-hard Houston sports fan.',
    headshot_url: 'http://gdurl.com/nidr'
)

image_carousel1 = ImageCarousel.create!(
    location: 'home',
    urls: [
        'https://images.unsplash.com/photo-1520428166013-aa14a295cb19?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8203a433fe2a2c11251cb6ac6438855c&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1493551511613-abc8320c265e?ixlib=rb-0.3.5&s=a7ca157eedcbcdbbcf7286ffc545c480&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1491146179969-d674118945ff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9a322c74c18eb76a9884e03724ddf7a9&auto=format&fit=crop&w=2978&q=80',
        'https://images.unsplash.com/photo-1444663837429-d2d894a77c77?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1cca3645c73e16e83608ffe03b414e13&auto=format&fit=crop&w=1992&q=80'
    ],
    headline: 'Light the Fire, Grow Your Dream'
)

image_carousel2 = ImageCarousel.create!(
    location: 'about',
    urls: [
        'https://images.unsplash.com/photo-1455793067932-146d5b4a694f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0a99a121c6a007e3cc9ecda129bb61a1&auto=format&fit=crop&w=934&q=80',
        'https://images.unsplash.com/photo-1467241850596-6a0de48568da?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3c1f57e313ec82598cfb80047483e93a&auto=format&fit=crop&w=933&q=80',
        'https://images.unsplash.com/photo-1518707101210-10794fcdc3f0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d124d3625023f15aa18624f0295b4173&auto=format&fit=crop&w=1955&q=80',
        'https://images.unsplash.com/photo-1518008931783-51b25ba2ccc9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=87a6a9889936a62f928eb3e67f348907&auto=format&fit=crop&w=1950&q=80'
    ],
    headline: 'Your Business, Evolved'
)

image_carousel3 = ImageCarousel.create!(
    location: 'services',
    urls: [
        'https://images.unsplash.com/photo-1518557743312-e86ea8b29b3b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a889fdfafc4123f38dabc056e8ba8b3b&auto=format&fit=crop&w=1955&q=80',
        'https://images.unsplash.com/photo-1504438652155-a421a09f1f1c?ixlib=rb-0.3.5&s=8051aaffbf40f1ecda174e95d5d7f90c&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1521508567009-a6d821b3db22?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f59eacb18a82d459d9be6ce4d81c8fa6&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1519458861917-ec46e733681b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e87a6e62cf9d86971837469c3e44a26a&auto=format&fit=crop&w=1950&q=80'
    ],
    headline: 'Providing Services To Your Business'
)

image_carousel4 = ImageCarousel.create!(
    location: 'contact',
    urls: [
        'https://images.unsplash.com/photo-1505210069911-a8e20f39ae6f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5889fa8316c30ec614bfeeadaf9f1fe2&auto=format&fit=crop&w=963&q=80',
        'https://images.unsplash.com/photo-1506277450472-30e3f3f55129?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f1d9511266a5133052e7a7778f856171&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1492104387331-206462f14a88?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=669f876b55701abd081133e601502ab3&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1504890283869-c3de3cea0c59?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ea9ddbbfc4a373c1b0f92a50cd68e4d2&auto=format&fit=crop&w=1950&q=80'
    ],
    headline: 'Get in touch'
)

AdminUser.create!(email: 'rsmease@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?