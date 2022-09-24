SELECT
	MIN(pl.value) faturamento_minimo,
	MAX(pl.value) faturamento_maximo,
	round(((SUM(pl.value)) / (COUNT(us.plan_id))), 2) faturamento_medio,
	SUM(pl.value) faturamento_total
FROM SpotifyClone.plans pl
	JOIN SpotifyClone.users us ON pl.plan_id = us.plan_id
