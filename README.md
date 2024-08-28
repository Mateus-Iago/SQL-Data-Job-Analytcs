# Introdução | Introduction
**🇧🇷**:
📊 Explorando o Mercado de Trabalho em Dados
Este projeto mergulha profundamente em uma vasta base de dados de vagas na área de ciência de dados. Descubra quais são os empregos mais bem remunerados 💰, as habilidades mais requisitadas 🔥, e onde encontrar essas oportunidades.

🔍 Quer ver algumas consultas SQL utilizadas? Confira aqui: [pasta project_sql](/project_sql/)

🇺🇸:
📊 Exploring the Data Job Market
This project dives deep into a massive database of job opportunities in the data field. Discover the highest-paying jobs 💰, the most sought-after skills 🔥, and where to find these opportunities.

🔍 Interested in seeing the SQL queries used? Check them out here: [projetc_sql folder](/project_sql/)

# Background
**🇧🇷**:
A ideia para este projeto, assim como o acesso à base de dados, surgiu a partir do incrível curso gratuito e extensivo de SQL ministrado pelo Professor Luke Barousse, disponível no YouTube Curso SQL.

Com o objetivo de aplicar os conhecimentos adquiridos no curso, decidi destacar as vagas com os maiores salários, as habilidades mais demandadas, e ajudar tanto a mim quanto a outros a encontrar oportunidades de trabalho baseadas em decisões orientadas por dados.

### Algumas perguntas que eu gostaria de responder com as minhas consultas na base de dados:

1. Quais são as vagas mais bem remuneradas para Analista de Dados?
2. Quais são as habilidades necessárias para essas vagas?
3. Quais habilidades estão em maior demanda para Analista de Dados?
4. Quais habilidades estão associadas aos maiores salários?
5. Quais são as habilidades mais coerentes para aprender?

**🇺🇸**:
The idea for this project, as well as access to the database, was inspired by the incredible free and extensive SQL course by Professor Luke Barouse, available on YouTube SQL Course.

Aiming to apply the knowledge from the course, I set out to highlight the highest-paying jobs, the most in-demand skills, and to help both myself and others find job opportunities through data-driven decision-making.

### Some questions I aim to answer with my database queries:

1. What are the highest-paying jobs for Data Analysts?
2. What skills are required for these jobs?
3. Which skills are in the highest demand for Data Analysts?
4. Which skills are associated with the highest salaries?
5. What are the most relevant skills to learn?

# Ferramentas | Tools
**🇧🇷**:
Para esta análise do mercado de trabalho para Analista de Dados, utilizei diversas ferramentas fundamentais:

- SQL: A espinha dorsal da minha análise. Através do SQL, consegui consultar a base de dados e extrair todos os insights necessários.
- PostgreSQL: O sistema de gerenciamento de banco de dados relacional (RDBMS) escolhido para o projeto.
- VS Code: Minha IDE de escolha, conectada ao banco de dados para executar as consultas SQL.
- Git e GitHub: Essenciais para o controle de versão do projeto e o compartilhamento das minhas consultas SQL e análises.

**🇺🇸**:
For this analysis of the job market for Data Analysts, I used several fundamental tools:

- **SQL**: The backbone of my analysis. Through SQL, I was able to query the database and extract all the necessary insights.
- **PostgreSQL**: The RDBMS chosen for the project.
- **VS Code**: My IDE of choice, connected to the database for executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL queries and analyses.

# Análise | Analysis
**🇧🇷**:
Cada uma das cinco consultas no projeto foca em investigar aspectos específicos do mercado de trabalho para Analista de Dados. Aqui está como abordei cada questão:

### 1. Vagas mais bem remuneradas para Analistas de dados 
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

**us**:
Each of the five queries in the project focuses on investigating specific aspects of the job market for Data Analysts. Here's how I approached each question:

### 1. Highest-Paying Jobs for Data Analysts
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