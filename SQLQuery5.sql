create procedure policies_select
as
begin
(
select max(policy_id)+1 from policies_master
)

end