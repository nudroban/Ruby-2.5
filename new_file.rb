x = <<-STRING 
<html> 
 <head><meta content='text/html'>
  <title>MySite</title>
 </head>
 <body>
  <table border="2">  
    <th>Serial Number</th> 
    <th>First Name</th>
    <th>Last Name</th>
    <th>City</th>
    <th>Email</th>
STRING
#y = <<-STRING
#   </table>
#  </body>
#</html>
#STRING

File.open("table.html", "w") do |file|
file.write(x)

end

