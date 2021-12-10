require 'faker'

def person
  person = Hash.new
  person[:first_name] = Faker::Name.first_name
  person[:last_name] = Faker::Name.last_name
  person[:city] = Faker::Address.city
  person[:email] = Faker::Internet.email
  person
end

def header
<<-STRING
<html>
 <head><meta content='text/html'>
  <title>MySite</title>
  <style type="text/css">
   table {
     margin: auto;
} 
   .fon {
     background: grey;
}
  </style>
 </head>
 <body>
  <table border="1" width="50%" aligh="center">
    <th>Serial Number</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>City</th>
    <th>Email</th>
STRING
end

def footer
<<-STRING
   </table>
  </body>
</html>
STRING
end

def html_person(x)

human = person 

<<-STRING
   <tr #{ x % 2 == 0 ? "" : "class='fon'" }>
    <th>#{x}</th>
    <th>#{human[:first_name]}</th>
    <th>#{human[:last_name]}</th>
    <th>#{human[:city]}</th>
    <th>#{human[:email]}</th>
   </tr>
STRING
end


File.open("index.html", "w") do |file|
  file.write(header)
  x = 0
  while x < 400 do
    x += 1
    file.write(html_person(x))
  end 
  file.write(footer)
end

File.open("humans.html", "w") do |doc|
  humans = Array.new

  for x in 1..10 do 
    humans = person    
    humans.length
    doc.write(humans)
  end
end
