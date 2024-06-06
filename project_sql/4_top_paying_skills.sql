/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Scientist positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Scientist and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Scientist'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/*

High-Value Technical Skills:

GDPR: The top skill by salary is knowledge related to the General Data Protection Regulation (GDPR), indicating that expertise in data privacy laws can be highly lucrative.
Golang: Skills in Go programming language are also highly valued, likely due to its efficiency and suitability for scalable systems, which are critical in data processing.
Diverse Technology Stack:

Atlassian, Selenium, and OpenCV: This range suggests a demand for skills in project management tools, test automation, and computer vision, respectively.
Database and Big Data Technologies: Skills like Neo4j (a graph database), DynamoDB (a NoSQL database), and Cassandra reflect a high salary potential for professionals skilled in diverse data storage technologies.
Specialized Skills in Emerging Technologies:

MicroStrategy and Qlik: Expertise in these business intelligence tools demonstrates the value of being able to leverage data for strategic decision-making.
Solidity and Rust: High salaries associated with these programming languages highlight the growing importance of blockchain and systems programming skills in the data science field.
Analytical Tools and Frameworks:

DataRobot and Looker: Knowledge in automated machine learning platforms and business intelligence visualization tools shows that there is a premium on skills that enhance data-driven insights and reporting capabilities.
Programming Diversity:

Beyond the common Python and R, programming languages like PHP, Go, and Julia being on the list suggest that diverse programming knowledge can also lead to high salaries, especially when these skills are applied in specialized or niche areas.



[
  {
    "skills": "gdpr",
    "avg_salary": "217738"
  },
  {
    "skills": "golang",
    "avg_salary": "208750"
  },
  {
    "skills": "atlassian",
    "avg_salary": "189700"
  },
  {
    "skills": "selenium",
    "avg_salary": "180000"
  },
  {
    "skills": "opencv",
    "avg_salary": "172500"
  },
  {
    "skills": "neo4j",
    "avg_salary": "171655"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "171147"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "169670"
  },
  {
    "skills": "php",
    "avg_salary": "168125"
  },
  {
    "skills": "tidyverse",
    "avg_salary": "165513"
  },
  {
    "skills": "solidity",
    "avg_salary": "165000"
  },
  {
    "skills": "c",
    "avg_salary": "164865"
  },
  {
    "skills": "go",
    "avg_salary": "164691"
  },
  {
    "skills": "datarobot",
    "avg_salary": "164500"
  },
  {
    "skills": "qlik",
    "avg_salary": "164485"
  },
  {
    "skills": "redis",
    "avg_salary": "162500"
  },
  {
    "skills": "watson",
    "avg_salary": "161710"
  },
  {
    "skills": "rust",
    "avg_salary": "161250"
  },
  {
    "skills": "elixir",
    "avg_salary": "161250"
  },
  {
    "skills": "cassandra",
    "avg_salary": "160850"
  },
  {
    "skills": "looker",
    "avg_salary": "158715"
  },
  {
    "skills": "slack",
    "avg_salary": "158333"
  },
  {
    "skills": "terminal",
    "avg_salary": "157500"
  },
  {
    "skills": "airflow",
    "avg_salary": "157414"
  },
  {
    "skills": "julia",
    "avg_salary": "157244"
  }
]
*/