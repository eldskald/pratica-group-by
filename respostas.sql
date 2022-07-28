SELECT COUNT(experiences."endDate") AS "currentExperiences" FROM experiences;
SELECT educations."userId" AS id, COUNT(educations.id) FROM educations GROUP BY educations."userId" ORDER BY educations."userId";
SELECT users.name AS writer, COUNT(testimonials.id) AS "testimonialCount" FROM testimonials JOIN users ON users.id = testimonials."writerId" WHERE testimonials."writerId" = 435 GROUP BY users.name;
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role FROM jobs JOIN roles ON roles.id = jobs."roleId" WHERE jobs.active = true GROUP BY roles.name ORDER BY "maximumSalary";
SELECT schools.name AS school, courses.name AS course, COUNT(educations.id) AS "studentsCount", educations.status AS role FROM educations JOIN schools ON schools.id = educations."schoolId" JOIN courses ON courses.id = educations."courseId" WHERE educations.status = 'ongoing' OR educations.status = 'finished' GROUP BY school, course, role ORDER BY "studentsCount" DESC LIMIT 3;
