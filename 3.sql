SELECT SUM(salary) AS sumsalary_of_Java_developers
FROM (skills
	LEFT JOIN developers_skills
	ON skills.id = developers_skills.skills_id
		LEFT JOIN developers
        ON developers_skills.developers_id = developers.id
        )
WHERE skills.industry = 'Java'
GROUP BY skills.industry;