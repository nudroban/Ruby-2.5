# В составе винограда 80% воды.В изюме — 15% воды. Сколько кг винограда надо взять, 
# чтобы получить 400 гр.изюма?
# 
# Вывести решение задачи в консоль

# float
grape_water = 80
grape_product = (100 - grape_water) / 100.0
raisin_water = 15
raisin_product = 100 - raisin_water
weight_r_product = 400 * (raisin_product / 100.0)
weight_g_product = weight_r_product / grape_product
final_weight = weight_g_product / 1000
 puts "#{final_weight} kg"
