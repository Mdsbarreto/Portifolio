
-- Portifólio 1

-- Treinamento realizado no DBeaver


-- Código para mostrar quantidade de clientes de 2 estados especificos
select
c.customer_state,
count (distinct c.customer_id) 
FROM customer c  
where c.customer_state = "MG" or c.customer_state  = "RJ"
GROUP by c.customer_state 



-- Quantidade de cidades de clientes de 2 cidades específicas, em uma localidade especifica, 
-- usando dados de geo-localização
select
g.geolocation_state,
count (distinct g.geolocation_city )
FROM geolocation g 
where g.geolocation_state in ("SP", "RJ")
and g.geolocation_lat > -24.54
and g.geolocation_lng < -45.63
GROUP by g.geolocation_state 



-- Mostrar a quantidade de pedidos e de produtos, e o valor médio dos pedidos, dos pedidos com frete com 
-- valor menor que R$ 20 e especificando um um intervalo de tempo o qual as compras foram realizadas
select
count (distinct oi.order_id ),
count (distinct oi.product_id ),
avg (oi.price)
FROM order_items oi 
WHERE oi.freight_value > 20
and date (oi.shipping_limit_date) >= '2016-10-01'
and date (oi.shipping_limit_date) <= '2016-10-31'



--Quantidade total dos pedidos e o valor total do pagamento, para pagamentos entre 1 e 5 prestações ou um 
-- valor de pagamento acima de R$ 5000. Agrupando por quantidade de prestações. 
select
op.payment_installments ,
count (op.order_id ),
sum (op.payment_value )
FROM order_payments op 
where op.payment_installments <=5		    -- regra, independente da debaixo
or op.payment_value >= 5000                 -- opcional, se tiver
GROUP by op.payment_installments 



-- A quantidade de pedidos com o status em processamento ou cancelada em um acontecem em um intervalo de data 
-- especifico e na saida mostrando pelo tipo de status
select
order_status,
count (order_status )
FROM orders
where order_status in ('canceled', 'processing')
and order_estimated_delivery_date < '2017-01-01'
and order_estimated_delivery_date > '2016-11-23'
group by order_status 



-- Quantidade de produtos por categoria (especificado algumas categorias), produtos estes que contem mais de 5 fotos, 
-- e tamanho maior que 20 cm. Saida agrupando por categoria
select
p.product_category_name, 
count (distinct product_id)
FROM products p 
where p.product_category_name in ('perfumaria','brinquedos','esporte_lazer')
and p.product_photos_qty >5
and product_length_cm >20
group by p.product_category_name 


