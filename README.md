# Introdução | Introduction
**PT-BR:**
📊 Explorando o Mercado de Trabalho em Dados
Este projeto mergulha profundamente em uma vasta base de dados de vagas na área de ciência de dados. Descubra quais são os empregos mais bem remunerados 💰, as habilidades mais requisitadas 🔥, e onde encontrar essas oportunidades.

🔍 Quer ver algumas consultas SQL utilizadas? Confira aqui: [pasta project_sql](/project_sql/)

---

**ENG:**
📊 Exploring the Data Job Market
This project dives deep into a massive database of job opportunities in the data field. Discover the highest-paying jobs 💰, the most sought-after skills 🔥, and where to find these opportunities.

🔍 Interested in seeing the SQL queries used? Check them out here: [projetc_sql folder](/project_sql/)

# Background
**PT-BR:**
A ideia para este projeto, assim como o acesso à base de dados, surgiu a partir do incrível curso gratuito e extensivo de SQL ministrado pelo Professor Luke Barousse, disponível no YouTube Curso SQL.

Com o objetivo de aplicar os conhecimentos adquiridos no curso, decidi destacar as vagas com os maiores salários, as habilidades mais demandadas, e ajudar tanto a mim quanto a outros a encontrar oportunidades de trabalho baseadas em decisões orientadas por dados.

### Algumas perguntas que eu gostaria de responder com as minhas consultas na base de dados:

1. Quais são as vagas mais bem remuneradas para Analista de Dados?
2. Quais são as habilidades necessárias para essas vagas?
3. Quais habilidades estão em maior demanda para Analista de Dados?
4. Quais habilidades estão associadas aos maiores salários?
5. Quais são as habilidades mais coerentes para aprender?

---

**ENG:**
The idea for this project, as well as access to the database, was inspired by the incredible free and extensive SQL course by Professor Luke Barouse, available on YouTube SQL Course.

Aiming to apply the knowledge from the course, I set out to highlight the highest-paying jobs, the most in-demand skills, and to help both myself and others find job opportunities through data-driven decision-making.

### Some questions I aim to answer with my database queries:

1. What are the highest-paying jobs for Data Analysts?
2. What skills are required for these jobs?
3. Which skills are in the highest demand for Data Analysts?
4. Which skills are associated with the highest salaries?
5. What are the most relevant skills to learn?

# Ferramentas | Tools
**PT-BR:**
Para esta análise do mercado de trabalho para Analista de Dados, utilizei diversas ferramentas fundamentais:

- SQL: A espinha dorsal da minha análise. Através do SQL, consegui consultar a base de dados e extrair todos os insights necessários.
- PostgreSQL: O sistema de gerenciamento de banco de dados relacional (RDBMS) escolhido para o projeto.
- VS Code: Minha IDE de escolha, conectada ao banco de dados para executar as consultas SQL.
- Git e GitHub: Essenciais para o controle de versão do projeto e o compartilhamento das minhas consultas SQL e análises.

---

**ENG:**
For this analysis of the job market for Data Analysts, I used several fundamental tools:

- **SQL**: The backbone of my analysis. Through SQL, I was able to query the database and extract all the necessary insights.
- **PostgreSQL**: The RDBMS chosen for the project.
- **VS Code**: My IDE of choice, connected to the database for executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL queries and analyses.

# Análise | Analysis
**PT-BR:**
Cada uma das cinco consultas no projeto foca em investigar aspectos específicos do mercado de trabalho para Analista de Dados. Aqui está como abordei cada questão:

---

**ENG:**
Each of the five queries in the project focuses on investigating specific aspects of the job market for Data Analysts. Here's how I approached each question:

### 1. Vagas Mais Bem Remuneradas para Analistas de Dados | Highest-Paying Jobs for Data Analysts
**PT-BR:**
Para identificar as vagas mais bem remuneradas, filtrei as posições de Analista de Dados pelo salário médio anual, com foco em trabalhos remotos. Essa consulta destacou excelentes oportunidades de trabalho na área.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
```
Aqui está a análise dos principais cargos de analista de dados em 2023:

- **Ampla Faixa Salarial**: Os 10 principais cargos de analista de dados pagam entre $184,000 e $650,000, indicando um potencial salarial significativo na área.

- **Empregadores Diversos**: Empresas como SmartAsset, Meta e AT&T estão entre as que oferecem altos salários, mostrando um amplo interesse em diferentes indústrias.

- **Variedade de Cargos de Trabalho**: Há uma alta diversidade nos cargos de trabalho, desde Analista de Dados até Diretor de Analytics, refletindo papéis e especializações variadas dentro da análise de dados.

![Vagas Mais Remuneradas para Analista de dados](/assets/1_top_paying_jobs.png)
 Gráfico de barras que indica o sálario anual das 10 vagas mais bem remuneradas para Analista de dados ; Esse gráfico foi gerado pelo ChatGPT a partir do resultado da minha consulta SQL.

---

**ENG:**
To identify the highest-paying jobs, I filtered Data Analyst positions by average annual salary, focusing on remote jobs. This query highlighted excellent job opportunities in the field.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
```
Here’s the analysis of the top data analyst roles in 2023:

- **Wide Salary Range**: The top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.

- **Diverse Employers**: Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing broad interest across different industries.

- **Job Title Variety**: There’s a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.

![Highest-paid opportunities for Data Analyst ](/assets/1_top_paying_jobs.png)
Bar chart indicating the annual salary of the 10 highest-paying Data Analyst positions; This chart was generated by ChatGPT based on the results of my SQL query.

### 2. Habilidades Associadas às Vagas Mais Bem Remuneradas | Skills Associated With the Highest-Paying Jobs 
**PT-BR:**
Para entender quais são as habilidades necessarias para as vagas mais bem remuneradas, Eu relacionei as tabelas job posting com a skills data, providenciando inisghts do que ;e valorizado pelo empregador nas vagas mais bem remuneradas

```sql
WITH  top_paying_jobs AS(
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 15
)

SELECT 
    top_paying_jobs.* ,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC
```
Aqui está a análise das principais habilidades para as 15 vagas mais bem remuneradas de 2023:

- **SQL** está liderando com 7 aparições.
- **Python** ocupa a segunda colocação com 6 aparições.
- **Tableu**ocupa a terceira colocação com 5 aparições.

![Habilidades mais requisitadas nas 15 vagas mais bem remuneradas](/assets/2_top_paying_jobs_skills.PNG)
Gráfico de barras que indica as freqûencia das habilidades necessarias listadas nas 15 vagas mais bem remuneradas para Analísta de dados ; Esse gráfico foi gerado pelo ChatGPT a partir do resultado da minha consulta SQL.

---

**ENG:**
To understand what skills are required for the top-paying jobs, I joined the job posting with the skills data, providing insights into what employers value for high-compensation roles

```sql
WITH  top_paying_jobs AS(
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 15
)

SELECT 
    top_paying_jobs.* ,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC
```
Here's the breakdown of the most demanded skills for the top 15 highest-paying Data Analys jobs in 2023:

- **SQL** is leading with a bold count of 7.
- **Python** follows closely with a bold count of 6.
- **Tableu**is also highly sought after, with a bold count of 5.

![Skills](/assets/2_top_paying_jobs_skills.PNG)
Bar Graph visualizing the count of skills for the top 15 paying jobs for Data Analyst; ChatGPT generated this graph from my SQL query

### 3. Habilidades em Demandas para Analista de Dados | In-Demand Skills for Data Analyst
**PT-BR:**
Esta consulta me ajudou a identificar as habilidades mais requisitadas em vagas de emprego, com foco em áreas de alta demanda.
```sql
SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5
```
Aqui está a análise das habilidades mais demandadas para Analista de Dados em 2023:

- **SQL** e **Excel** Permanecem no topo, destacando a importância de habilidades fundamentais no processamento de dados e manipulação de tabelas.
- Ferramentas de **Programação** e **Visualização** como **Python,Tableu e Power BI** são essenciais, evidenciando a importância de competências técnicas em storytelling e na tomada de decisões baseadas em dados.

| **Skill** | **Demand Count** |
|-----------|------------------|
| SQL       | 7,291            |
| Excel     | 4,611            |
| Python    | 4,330            |
| Tableau   | 3,745            |
| Power BI  | 2,609            |

Tabela de demandas para as top 5 habilidades para Analista de dados 

---
**ENG:**
This query helped identify the skills most frequently requested in job postings, directing focus to areas with high demand.

```sql
SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5
```
Here's the breakdown of the most demanded skills for Data Analyst in 2023:

- **SQL** e **Excel** remain fundamental, emphasizing the need for strong foundational skills in data processing and spredsheet manipulation
- **Programing** and **Visualization Tools** like **Python, Tableau** and **Power BI** are essential, pointing towars the increasing importance of technical skills in data storytelling and decision suport

| **Skill** | **Demand Count** |
|-----------|------------------|
| SQL       | 7,291            |
| Excel     | 4,611            |
| Python    | 4,330            |
| Tableau   | 3,745            |
| Power BI  | 2,609            |

Table of the demand for the top 5 skills in data analyst job posting 

### 4. Habilidades Baseada em Salário | Skill Based on Salary
**PT-BR:**
Explorar as médias salariais associadas a diferentes habilidades revelou quais são as mais bem remuneradas.

```sql
SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    --job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25
```

Aqui está a análise das habilidades mais bem remuneradas para Analista de Dados em 2023:

-  **Habilidades Especializadas em Big Data e Machine Learning São Altamente Valorizadas:**
Habilidades como PySpark, Pandas, Databricks, Scikit-Learn, e Airflow aparecem consistentemente no topo da lista, indicando uma alta demanda por profissionais que dominam ferramentas de processamento de grandes volumes de dados e frameworks de machine learning. Empresas que operam em escala estão dispostas a pagar altos salários por essas habilidades.

- **Cloud Computing Continua a Ser uma Competência Essencial:**
GCP (Google Cloud Platform) aparece na lista, reforçando a ideia de que habilidades em computação em nuvem são essenciais para Analistas de Dados. A capacidade de trabalhar com plataformas de nuvem, especialmente para o gerenciamento e análise de grandes conjuntos de dados, é cada vez mais importante.

- **Ferramentas de Colaboração e DevOps Ganhando Relevância:**
Ferramentas de colaboração e automação como Bitbucket, GitLab, Jenkins, e Kubernetes estão entre as habilidades mais bem remuneradas. Isso reflete a importância crescente da integração contínua e entrega contínua (CI/CD), bem como do desenvolvimento colaborativo em ambientes de dados. A capacidade de integrar e colaborar eficientemente em projetos de dados é crucial para as empresas.

| **Skill**         | **Average Salary (USD)** |
|-------------------|-------------------------|
| PySpark           | 208,172                 |
| Bitbucket         | 189,155                 |
| Couchbase         | 160,515                 |
| Watson            | 160,515                 |
| DataRobot         | 155,486                 |
| GitLab            | 154,500                 |
| Swift             | 153,750                 |
| Jupyter           | 152,777                 |
| Pandas            | 151,821                 |
| Elasticsearch     | 145,000                 |
| GoLang            | 145,000                 |
| NumPy             | 143,513                 |
| Databricks        | 141,907                 |
| Linux             | 136,508                 |
| Kubernetes        | 132,500                 |
| Atlassian         | 131,162                 |
| Twilio            | 127,000                 |
| Airflow           | 126,103                 |
| Scikit-Learn      | 125,781                 |
| Jenkins           | 125,436                 |
| Notion            | 125,000                 |
| Scala             | 124,903                 |
| PostgreSQL        | 123,879                 |
| GCP               | 122,500                 |
| MicroStrategy     | 121,619                 |

Tabela das habilidades mais bem remuneradas em 2023

---
**ENG:**
Exploring the average salaries associated with different skills revealed which ones are the highest-paying.

```sql
SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    --job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25
```
Here is the analysis of the highest-paying skills for Data Analysts in 2023:

- **Specialized Skills in Big Data and Machine Learning Are Highly Valued:**
Skills like PySpark, Pandas, Databricks, Scikit-Learn, and Airflow consistently appear at the top of the list, indicating a high demand for professionals proficient in big data processing tools and machine learning frameworks. Companies operating at scale are willing to pay premiums for these skills.

- **Cloud Computing Continues to Be an Essential Competency:**
GCP (Google Cloud Platform) appears on the list, reinforcing the idea that cloud computing skills are essential for Data Analysts. The ability to work with cloud platforms, especially for managing and analyzing large datasets, is increasingly important.

- **Collaboration and DevOps Tools Are Gaining Relevance:**
Tools for collaboration and automation like Bitbucket, GitLab, Jenkins, and Kubernetes are among the highest-paying skills. This reflects the growing importance of continuous integration and continuous delivery (CI/CD), as well as collaborative development in data environments. The ability to integrate and collaborate effectively on data projects is crucial for companies.

| **Skill**         | **Average Salary (USD)** |
|-------------------|-------------------------|
| PySpark           | 208,172                 |
| Bitbucket         | 189,155                 |
| Couchbase         | 160,515                 |
| Watson            | 160,515                 |
| DataRobot         | 155,486                 |
| GitLab            | 154,500                 |
| Swift             | 153,750                 |
| Jupyter           | 152,777                 |
| Pandas            | 151,821                 |
| Elasticsearch     | 145,000                 |
| GoLang            | 145,000                 |
| NumPy             | 143,513                 |
| Databricks        | 141,907                 |
| Linux             | 136,508                 |
| Kubernetes        | 132,500                 |
| Atlassian         | 131,162                 |
| Twilio            | 127,000                 |
| Airflow           | 126,103                 |
| Scikit-Learn      | 125,781                 |
| Jenkins           | 125,436                 |
| Notion            | 125,000                 |
| Scala             | 124,903                 |
| PostgreSQL        | 123,879                 |
| GCP               | 122,500                 |
| MicroStrategy     | 121,619                 |

Table of the highest-paying skills in 2023

### 5. Melhores Habilidades para se aprender | Most Optimal Skills to Learn
**PT-BR:**
Combinando os insights anteriores de demanda e salário, essa consulta buscou apontar as habilidades que tem uma alta demanda e ainda sim uma alta remuneração, oferecendo  um foco estratégico para desenvolvimento de habilidades.

```sql 
SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0 ) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 25;
```

| **Skill ID** | **Skills** | **Demand Count** | **Avg. Salary** |
|---|---|---|---|
| 8 | Go | 27 | 115320 |
| 234 | Confluence | 11 | 114210 |
| 97 | Hadoop | 22 | 113193 |
| 80 | Snowflake | 37 | 112948 |
| 74 | Azure | 34 | 111225 |
| 77 | BigQuery | 13 | 109654 |
| 76 | AWS | 32 | 108317 |
| 4 | Java | 17 | 106906 |
| 194 | SSIS | 12 | 106683 |
| 233 | Jira | 20 | 104918 |
| 79 | Oracle | 37 | 104534 |
| 185 | Looker | 49 | 103795 |
| 2 | NoSQL | 13 | 101414 |
| 1 | Python | 236 | 101397 |
| 5 | R | 148 | 100499 |
| 78 | Redshift | 16 | 99936 |
| 187 | Qlik | 13 | 99631 |
| 182 | Tableau | 230 | 99288 |
| 197 | SSRS | 14 | 99171 |
| 92 | Spark | 13 | 99077 |
| 13 | C++ | 11 | 98958 |
| 186 | SAS | 63 | 98902 |
| 7 | SAS | 63 | 98902 |
| 61 | SQL Server | 35 | 97786 |
| 9 | JavaScript | 20 | 97587 |

Tabela de habilidades mais procuradas e bem remuneradas ordenadas pela média salaria.

Aqui está a análise das habilidades mais bem remuneradas e procuradas por empregadores para o cargo de Analista de Dados em 2023:

- **Linguagens de Programação de Alta Demanda:** Python e R se destacam por sua alta demanda, com 236 e 148 vagas, respectivamente. Apesar da alta demanda, seus salários médios estão em torno de US$ 101.397 para Python e US$ 100.499 para R, indicando que a proficiência nessas linguagens é altamente valorizada, mas também amplamente disponível.

- **Ferramentas e Tecnologias em Nuvem:** Habilidades em tecnologias especializadas como Snowflake, Azure, AWS e BigQuery apresentam uma demanda significativa com salários médios relativamente altos, apontando para a crescente importância de plataformas em nuvem e tecnologias de big data na análise de dados.

- **Ferramentas de Business Intelligence e Visualização:** Tableau e Looker, com 230 e 49 vagas, respectivamente, e salários médios em torno de US$ 99.288 e US$ 103.795, destacam o papel crucial da visualização de dados e da inteligência de negócios na obtenção de insights acionáveis a partir dos dados.

- **Tecnologias de Banco de Dados:**  demanda por habilidades em bancos de dados tradicionais e NoSQL (Oracle, SQL Server, NoSQL) com salários médios variando de US$ 97.786 a US$ 104.534 reflete a necessidade contínua de expertise em armazenamento, recuperação e gerenciamento de dados.

---
**ENG:** By combining the previous insights on demand and salary, this query aimed to identify skills with both high demand and high remuneration, providing a strategic focus for skill development.

```sql 
SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0 ) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 25;
```

| **Skill ID** | **Skills** | **Demand Count** | **Avg. Salary** |
|---|---|---|---|
| 8 | Go | 27 | 115320 |
| 234 | Confluence | 11 | 114210 |
| 97 | Hadoop | 22 | 113193 |
| 80 | Snowflake | 37 | 112948 |
| 74 | Azure | 34 | 111225 |
| 77 | BigQuery | 13 | 109654 |
| 76 | AWS | 32 | 108317 |
| 4 | Java | 17 | 106906 |
| 194 | SSIS | 12 | 106683 |
| 233 | Jira | 20 | 104918 |
| 79 | Oracle | 37 | 104534 |
| 185 | Looker | 49 | 103795 |
| 2 | NoSQL | 13 | 101414 |
| 1 | Python | 236 | 101397 |
| 5 | R | 148 | 100499 |
| 78 | Redshift | 16 | 99936 |
| 187 | Qlik | 13 | 99631 |
| 182 | Tableau | 230 | 99288 |
| 197 | SSRS | 14 | 99171 |
| 92 | Spark | 13 | 99077 |
| 13 | C++ | 11 | 98958 |
| 186 | SAS | 63 | 98902 |
| 7 | SAS | 63 | 98902 |
| 61 | SQL Server | 35 | 97786 |
| 9 | JavaScript | 20 | 97587 |

Table of the most optimal skills for Data Analyst sorted by salary

Here's a breakdown of the most optimal skills for Data Analyst in 2023:

- **High-Demand Programming Languages:** Python and R stand out for their high demand, with demand counts of 236 and 148 respectively. Despite their high demand, their average salaries are around $101,397 for Python and $100,499 for R, indicating that proficiency in these languages is highly valued but also widely available.

- **Cloud Tools and Technologies:** Skills in specialized technologies such as Snowflake, Azure, AWS, and BigQuery show significant demand with relatively high average salaries, pointing towards the growing importance of cloud platforms and big data technologies in data analysis.

- **Business Intelligence and Visualization Tools:** Tableau and Looker, with demand counts of 230 and 49 respectively, and average salaries around $99,288 and $103,795, highlight the critical role of data visualization and business intelligence in deriving actionable insights from data.

- **Database Technologies:** The demand for skills in traditional and NoSQL databases (Oracle, SQL Server, NoSQL) with average salaries ranging from $97,786 to $104,534, reflects the enduring need for data storage, retrieval, and management expertise.

# Oque Eu Aprendi | What I learned

**PT-BR:**
Ao longo dessa jornada, turbinei meu conjunto de ferramentas SQL:

-  **🧩Criação de Consultas Complexas:**  Dominando a arte do SQL avançado, mesclando tabelas e utilizando cláusulas WITH para manobras de tabelas temporárias,

- **📊Agregação de Dados:** Me familiarizei com o GROUP BY e transformei funções de agregação como COUNT() e AVG() nas colunas para resumir os dados.

- **💡Capacidade Analítica** Elevei minhas habilidades de resolução de problemas do mundo real, transformando perguntas em consultas SQL.

---

**ENG:**
I've significantly enhanced my SQL skills during this journey:

-  **🧩Complex Query Crafting:**  I've mastered complex queries, including joins and common table expressions

- **📊Data Aggregation:** become proficient in data aggregation using functions like COUNT and AVG.

- **💡Analytical Capacity** I've also developed the ability to translate real-world problems into effective SQL queries.

#  Conclusão | Conclusion

### Insights
**PT-BR:**

- **Vagas de Analista de Dados Mais Bem Pagas:** As vagas mais bem pagas para analistas de dados que permitem trabalho remoto oferecem uma ampla faixa salarial, com o salário mais alto chegando a US$ 650.000!

-  **Habilidades para Vagas Bem Pagas:** Vagas de analista de dados bem pagas exigem proficiência avançada em SQL, sugerindo que é uma habilidade crucial para ganhar um salário alto.

- **Habilidades Mais Demandadas** SQL é também a habilidade mais demandada no mercado de trabalho para analistas de dados, tornando-a essencial para quem busca emprego.

- **Habilidades com Salários Mais Altos** Habilidades especializadas, como SVN e Solidity, estão associadas aos maiores salários médios, indicando um prêmio por expertise de nicho.

- **Habilidades Ótimas para Valor de Mercado** SQL lidera em demanda e oferece um salário médio alto, posicionando-a como uma das habilidades importantes para analistas de dados aprenderem a fim de maximizar seu valor de mercado.

---

**ENG:**

- **Top-Paying Data Analyst Jobs:** The highest-paying jobs for data analysts that allow remote work offer a wide range of salaries, the highest at $650,000!

- **Skills for Top-Paying Jobs:** High-paying data analyst jobs require advanced proficiency in SQL, suggesting it's a critical skill for earning a top salary.

- **Most In-Demand SkillS:** SQL is also the most demanded skill in the data analyst job market, thus making it essential for job seekers.

- **Skills with Higher Salaries** Specialized skills, such as SVN and Solidity, are associated with the highest average salaries, indicating a premium on niche expertise.

- **Optimal Skills for Job Market Value** SQL leads in demand and offers for a high average salary, positioning it as one of the most optimal skills for data analysts to learn to maximize their market value.

### Encerramento | Closing Thoughts
**PT-BR:** Este projeto aprimorou minhas habilidades em SQL e forneceu insights valiosos sobre o mercado de trabalho para analistas de dados. Os resultados da análise servem como um guia para priorizar o desenvolvimento de habilidades e os esforços de busca por emprego. Aspirantes a analistas de dados podem se posicionar melhor em um mercado de trabalho competitivo ao se concentrar em habilidades com alta demanda e alto salário. Essa exploração destaca a importância da aprendizagem contínua e da adaptação às tendências emergentes no campo da análise de dados.

---

**ENG:** This project enhanced my SQL skills and provided valuable insights into the data analyst job market. The findings from the analysis serve as a guide to prioritizing skill development and job search efforts. Aspiring data analysts can better position themselves in a competitive job market by focusing on high-demand, high-salary skills. This exploration highlights the importance of continuous learning and adaptation to emerging trends in the field of data analytics.

---