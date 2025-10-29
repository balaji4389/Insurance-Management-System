create procedure max_cust
as
begin
(
select max(cust_id)+1 from customer_master
)
end
