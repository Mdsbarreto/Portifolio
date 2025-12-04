
-- Portifólio 1

-- Treinamento realizado no DBeaver


-- Contagem de clientes de dois estados específicos.
select
c.customer_state,
count (distinct c.customer_id) 
FROM customer c  
where c.customer_state = "MG" or c.customer_state  = "RJ"
GROUP by c.customer_state 



-- Contagem de cidades de clientes em duas cidades específicas dentro de uma localidade definida.
select
g.geolocation_state,
count (distinct g.geolocation_city )
FROM geolocation g 
where g.geolocation_state in ("SP", "RJ")
and g.geolocation_lat > -24.54
and g.geolocation_lng < -45.63
GROUP by g.geolocation_state 



-- Quantidade de pedidos, quantidade de produtos e valor médio dos pedidos, filtrando fretes abaixo de R$ 20 e um intervalo de tempo definido.
select
count (distinct oi.order_id ),
count (distinct oi.product_id ),
avg (oi.price)
FROM order_items oi 
WHERE oi.freight_value > 20
and date (oi.shipping_limit_date) >= '2016-10-01'
and date (oi.shipping_limit_date) <= '2016-10-31'



--Total de pedidos e valor total pago, considerando pagamentos entre 1 e 5 prestações ou valores acima de R$ 5000, agrupando por número de prestações.
select
op.payment_installments ,
count (op.order_id ),
sum (op.payment_value )
FROM order_payments op 
where op.payment_installments <=5		    -- regra, independente da debaixo
or op.payment_value >= 5000                 -- opcional, se tiver
GROUP by op.payment_installments 



-- Contagem de pedidos com status "Em processamento" ou "Cancelado", dentro de um intervalo de datas, agrupando por status.
select
order_status,
count (order_status )
FROM orders
where order_status in ('canceled', 'processing')
and order_estimated_delivery_date < '2017-01-01'
and order_estimated_delivery_date > '2016-11-23'
group by order_status 



-- Contagem de produtos por categoria (filtrando algumas categorias), considerando produtos com mais de 5 fotos e tamanho acima de 20 cm. Agrupamento por categoria.
select
p.product_category_name, 
count (distinct product_id)
FROM products p 
where p.product_category_name in ('perfumaria','brinquedos','esporte_lazer')
and p.product_photos_qty >5
and product_length_cm >20
group by p.product_category_name 


