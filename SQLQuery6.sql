create procedure policy_type_id_select2
as
begin
(
select policy_type_field_id from policy_type_master
)
end