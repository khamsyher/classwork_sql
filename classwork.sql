select count(product_id)from production.products

select *from production.products

select production.products.product_id'ລະຫັດ',production.products.product_name'ຊື່ສິນຄ້າ' from production.products


select *from production.products

select production.products.product_id'ລະຫັດ',production.products.product_name'ຊື່ສິນຄ້າ', 
 production.brands.brand_name'ຍີ່ຫໍ',production.categories.category_name'ປະເພດສິນຄ້າ', model_year,list_price
 from production.products,production.brands,
 production.categories where production.brands.
 brand_id = production.products.brand_id and
 production.products.category_id=production.categories.category_id


select *from production.stocks

select store_id,production.products.product_name, quantity from production.stocks,production.products 
where production.products.product_id=production.stocks.
product_id

select*from sales.customers
select*from sales.stores
select*from sales.staffs
select*from sales.orders
select*from sales.order_items

select customer_id'ລະຫັດລູກຄ້າ',first_name'ຊື່ລູກຄ້າ',last_name'ນາສະກຸມ', phone'ເບີ', email'ເມວ', street'ສະຖົນ',
city'ເມືອງ', state'ລັດ',zip_code'ລະຫັດປະເທດ' from sales.customers 


select  store_id 'ລະຫັດຮ້ານ', store_name 'ຊື່ຮ້ານ', phone 'ເບີໂທ', email 'ເມວ',
street 'ສະຖົນ', city 'ເມືອງ', zip_code 'ລະຫັດປະເທດ' from sales.stores


select order_id'ລະຫັດ',sales.customers.first_name'ຊື່ລູກຄ້າ',order_status'ສະຖານະສັ່ງຊື້',order_date'ວັນທີ່ສັ່ງຊື້',required_date'ວັນທີ່ຕ້ອງການ',
shipped_date'ວັນທີ່ຈັດສົ່ງ',sales.stores.store_name'ຊື່ຮ້ານ',sales.staffs.first_name'ຊື່ພະນັກງານ' 
from sales.stores,sales.orders,sales.staffs, sales.customers where
sales.orders.store_id = sales.stores.store_id and 
sales.orders.staff_id = sales.staffs.staff_id and
sales.orders.staff_id = sales.customers.customer_id


 select staff_id'ລະຫັດ', first_name'ຊື່',last_name'ນາສະກຸມ',sales.staffs.email'ເມວ',sales.staffs.phone'ເບີ',active'ການເຄື່ອນໄຫວ',
 sales.stores.store_name'ຊື່ຮ້ານ', manager_id'ລະຫັດຜູ້ບໍລິຫານ' from  sales.staffs, sales.stores where sales.staffs.store_id = sales.
 stores.store_id

 select*from sales.order_items
 select order_id'ລະຫັດ',item_id 'ລາຍການ', production.products.product_name'ຊື່ສິນຄ້າ',sales.order_items.quantity'ຄຸນະພາບ', 
 sales.order_items.list_price'ລາຄາ',discount'ສ່ວນຫຼຸດ' from sales.order_items,production.products where 
 sales.order_items.product_id=production.products.product_id