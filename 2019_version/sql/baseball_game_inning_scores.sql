with t1 as
(
select 
  g.league_id
, sn.id as season_id
, g.id as game_id
, g.interval_type
, s.period as inning
, s.clock_seconds
, s.home_team_score
, s.away_team_score
, (s.home_team_score + s.away_team_score)  as total_score
, (s.home_team_score::text || s.away_team_score::text)  as home_away_score_pair
, (s.away_team_score::text || s.home_team_score::text)  as away_home_score_pair
, false is_over 
from
scoreboards s
join games g on g.id = s.game_id
join seasons sn on sn.id = g.season_id
join leagues l on l.id = sn.league_id
where 
l.abbreviation = 'MLB'
and g.interval_type = 'regularseason'
and s.period > 0
and g.status = 'closed'
and ended_at is not null

union

select
  g.league_id
, sn.id as season_id
, g.id as game_id
, g.interval_type
, g.period as inning
, g.clock_secs as clock_seconds
, g.home_team_score
, g.away_team_score
, (g.home_team_score + g.away_team_score)  as total_score
, (g.home_team_score::text || g.away_team_score::text)  as home_away_score_pair
, (g.away_team_score::text || g.home_team_score::text)  as away_home_score_pair
, TRUE as is_over
from games g
join seasons sn on sn.id = g.season_id
join leagues l on l.id = sn.league_id
where 
l.abbreviation = 'MLB'
and g.interval_type = 'regularseason'
and g.status = 'closed'
and ended_at is not null
and g.period > 0
)


select
  t1.league_id
, l.name as league_name
, l.abbreviation as league_abbreviation
, t1.season_id
, sn.name as season_name
, t1.game_id
, g.slug as game_slug
, ht.id as home_team_id
, ht.name as home_team_name
, ht.location as home_team_location
, ht.nickname as home_team_nickname
, ht.abbreviation as home_team_abbreviation
, awt.id as away_team_id
, awt.name as away_team_name
, awt.location as away_team_location
, awt.nickname as away_team_nickname
, awt.abbreviation as away_team_abbreviation
, t1.interval_type
, t1.inning
, t1.clock_seconds
, case 
    when t1.clock_seconds = 0 and is_over = FALSE then 'top'
    when t1.clock_seconds = 30 and is_over = FALSE then 'bottom'  
    when is_over = TRUE then 'end' end as inning_half  
, t1.home_team_score
, t1.away_team_score
, t1.total_score
, t1.home_away_score_pair
, t1.away_home_score_pair
, g.home_team_outcome
, g.away_team_outcome
, t1.is_over
from t1
join games g on g.id = t1.game_id
join seasons sn on sn.id = t1.season_id
join leagues l on l.id = t1.league_id
join teams ht on ht.id = g.home_team_id
join teams awt on awt.id = g.away_team_id
order by 
  season_id
, game_id
, inning asc
, is_over
, clock_seconds
;