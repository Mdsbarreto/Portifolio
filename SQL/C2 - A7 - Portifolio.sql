

-- Portifólio 2

-- Treinamento realizado no DBeaver

-- Treinamento agrupando tabelas com left join


-- mostrar o valor maximo de um produto, para cada status do pedido, especificando 2 métodos de pagamento e apenas cidades iniciadas com a letra A
SELECT 
order_status as 'status do pedido',
max (op.payment_value) as 'valor máximo de um pedido'
from orders o 
left join order_payments op on (o.order_id  = op.order_id)
left join customer c on (c.customer_id = o.customer_id )
where op.payment_type in ('credit_card','boleto')
and c.customer_city  like 'a%'
group by order_status 
having max (op.payment_value) >70 



-- Vendedores com mais clientes
SELECT
s.seller_id,
COUNT( c.customer_id ) 
FROM orders o 
	left join order_items oi on ( oi.order_id = o.order_id )
	left join sellers s on ( s.seller_id = oi.seller_id )
	left join customer c on ( c.customer_id = o.customer_id)
group by s.seller_id
order by COUNT( c.customer_id ) desc
LIMIT 10;



-- Mostrar por cidade, a soma dos valores de cada pedido, com filtros sendo preço maior que R$ 500, com intervalo de datas, 
-- cidades iniciadas com SAO
select
c.customer_city,
sum (op.payment_value)
from customer c
inner join orders o on (c.customer_id  = o.customer_id )
inner join order_payments op on (op.order_id = o.order_id )
where op.payment_value > 500
and ( o.order_estimated_delivery_date between '2017-01-01' and '2017-12-31' )
and c.customer_city like 'sao%'
group by c.customer_city 
order by sum (op.payment_value) desc
limit 20



