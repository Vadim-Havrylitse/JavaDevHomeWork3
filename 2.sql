SELECT projects.name, SUM(salary)
FROM projects
LEFT JOIN developers_projects
	ON projects.id = developers_projects.projects_id
LEFT JOIN developers
	ON developers.id = developers_projects.developers_id
GROUP BY projects.id
ORDER BY SUM(salary) DESC
LIMIT 1;
