SELECT testgoitdb.projects.name AS projects_with_maxsalary_of_own_developers
FROM testgoitdb.projects
WHERE id IN (
	SELECT projects_id
	FROM (
		SELECT tab1.projects_id, SUM(salary) AS sumsalary
		FROM testgoitdb.developers_projects AS tab1
		LEFT JOIN testgoitdb.developers AS tab2
			ON (tab1.developers_id = tab2.id)
		GROUP BY tab1.projects_id) AS temptab1
	INNER JOIN (
		SELECT SUM(salary) AS sumsalary
		FROM testgoitdb.developers_projects AS tab1
		LEFT JOIN testgoitdb.developers AS tab2
			ON (tab1.developers_id = tab2.id)
		GROUP BY tab1.projects_id
		ORDER BY SUM(salary) DESC
		LIMIT 1) AS temptab2
	ON temptab1.sumsalary = temptab2.sumsalary
    );