with cte1 as (
	select *
	from ab_test_match
	limit 100, 200
), cte2 as (
	select matchId, matchDate, matchType, ouid, nickname, matchResult
	from cte1
	where nickname = '벨바톺' and matchEndType = 0
)
select *
from cte2 a join ab_test_player b using(matchId, matchDate, matchType, ouid, nickname)