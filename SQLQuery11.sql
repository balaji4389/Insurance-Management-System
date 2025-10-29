create procedure max_policy_ref_id
as
begin
(
select max(policy_ref_type_id)+1 from policy_ref_type_master
)
end