create procedure max_agent
as
begin
(
select max(agent_id)+1 from agent_master
)
end
