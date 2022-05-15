SELECT tab1.id, AVG(salary) AS avgsalary_in_mincost_projects
FROM (
	(SELECT id
	FROM testgoitdb.projects
	WHERE cost IN (
		SELECT MIN(cost)
		FROM testgoitdb.projects
		)) AS tab1
	LEFT JOIN developers_projects AS tab2
	ON tab1.id = tab2.projects_id
		LEFT JOIN developers AS tab3
        ON tab2.developers_id = tab3.id
        )
GROUP BY tab1.id;