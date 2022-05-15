SELECT id, testgoitdb.projects.name AS projects_with_mincost, cost
FROM testgoitdb.projects
WHERE cost IN (
	SELECT MIN(cost)
    FROM testgoitdb.projects
    );