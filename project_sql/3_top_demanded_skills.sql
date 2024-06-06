/*
Question: What are the most in-demand skills for data scientists?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data scientist.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Scientist' 
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;

/*
Here's the breakdown of the most demanded skills for data scientist in 2023

Insights:
Python Leads the Pack: Python is the most in-demand skill, highlighting its significance in data processing, analysis, and machine learning applications.
Essential Database Knowledge: SQL follows closely, underscoring the need for data scientists to be proficient in database management and data retrieval.
Statistical Software Competence: R remains crucial for statistical analysis, showcasing its importance in academia and sectors relying heavily on statistics.
Cloud and Visualization Skills: AWS and Tableau appear as essential skills, emphasizing the growing need for cloud computing expertise and data visualization capabilities in the field of data science.
[
  {
    "skills": "python",
    "demand_count": "10390"
  },
  {
    "skills": "sql",
    "demand_count": "7488"
  },
  {
    "skills": "r",
    "demand_count": "4674"
  },
  {
    "skills": "aws",
    "demand_count": "2593"
  },
  {
    "skills": "tableau",
    "demand_count": "2458"
  }
]


*/