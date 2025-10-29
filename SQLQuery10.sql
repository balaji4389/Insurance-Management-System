create procedure  max_claim_status1
as
begin
(
select max(status_code)+1 from claim_status_code
)
end