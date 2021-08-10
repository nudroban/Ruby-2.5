# 1. В книге 952 страницы. Пользователь вводит целое число, которое 
# указывает на количество прочитанных страниц.
# Задача: 
# - Отобразить в виде целого числа сколько процентов книги он прочитал.
# - Отобразить оставшееся количетво старниц, а также остаток в процентом соотношении
# - Выполнить проверку пользовательского ввода на ввод корректных данных.
#
# Пример вывода: You have readed XX% of book, you will read XXX pages (YY%).

total_pages = 952
puts "Book have a #{total_pages} pages"
print 'Enter the number of pages read: '
pages = gets
if pages.to_i > 0
  pages = pages.to_i
else
  puts "#{pages} is not Integer"
  exit
end
 
procent_pages = pages * 100 / total_pages
remaning_pages = total_pages - pages
rem_pages_procent = (total_pages - pages) * 100 / total_pages
  puts "You have readed #{procent_pages} % of book,you will read #{remaning_pages} pages (#{rem_pages_procent} %)"
