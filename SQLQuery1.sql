create procedure insurance_companies_select
as
begin
(
select  company_name,comapny_website_link from insurance_companies_master
)

end 

