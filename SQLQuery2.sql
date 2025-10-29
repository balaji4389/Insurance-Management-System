create procedure max_policy_type
as 
begin
(
select max(policy_type_field_id)+1 from policy_type_master
)
end