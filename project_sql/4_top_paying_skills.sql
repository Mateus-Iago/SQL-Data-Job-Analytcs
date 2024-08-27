/*
Pegunta: Quais são as skills mais recorrentes baseada em salário
- Procurar a média salarial associada a cada habilidade para Data Analyst
- Foco em vagas com salario especificado sem restrição de região

Answer: What are the top skills based on salary?
- Look ate the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
*/

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


/*
Analisando a consulta SQL que agregou os dados salariais médios de vagas para "Data Analyst" com base nas skills necessárias, podemos extrair alguns insights valiosos:

1. Skills Raras e Altamente Valorizadas
SVN (Subversion) e Solidity: Estas skills estão associadas aos salários médios mais altos, sendo que o SVN alcança um valor extremamente elevado (€400,000), possivelmente por ser uma skill muito específica e de baixa oferta no mercado. Solidity, usada para desenvolvimento em blockchain, reflete a crescente demanda por profissionais com expertise em tecnologia descentralizada, com uma média salarial de €179,000.
2. Tendências em Data Science e Machine Learning
DataRobot e Golang: Estas tecnologias estão também associadas a altos salários (€155,486 e €155,000, respetivamente). DataRobot, uma plataforma de machine learning automatizado, sugere que a expertise em ferramentas que facilitam o processo de machine learning está em alta demanda. Golang, por sua vez, é muito valorizado por sua eficiência em sistemas distribuídos e programação backend.

MXNet, Keras, Pytorch, TensorFlow: São todas frameworks de deep learning e machine learning, que continuam a ser valorizadas no mercado, com salários médios variando de €149,000 a €120,647. Isso indica a relevância contínua de habilidades em frameworks de IA para analistas de dados.

3. Ferramentas de DevOps e Infraestrutura
VMware, Terraform, Puppet, Ansible: Estes são exemplos de ferramentas relacionadas a DevOps e infraestrutura, com salários significativos (€147,500 a €124,370). A integração de skills de DevOps em Data Analysis é cada vez mais comum, refletindo a importância de um conhecimento robusto em ambientes de nuvem e automação de infraestrutura.

GitLab e Kafka: GitLab é uma plataforma DevOps completa, enquanto Kafka é uma ferramenta essencial para streaming de dados. Ambos têm salários elevados (€134,126 e €129,999), demonstrando que conhecimentos em plataformas de colaboração e processamento em tempo real são altamente valorizados.

4. Skills Emergentes e Específicas
Hugging Face e Notion: Hugging Face é uma biblioteca que facilita a implementação de modelos de NLP, refletindo a importância crescente do processamento de linguagem natural. Notion, uma ferramenta de produtividade, com um salário médio de €118,092, indica que habilidades em ferramentas de gestão de conhecimento também são importantes.
5. Salários Competitivos em Skills de Ferramentas Populares
GitLab, Bitbucket, Atlassian: Ferramentas populares no ecossistema de desenvolvimento, com salários médios que sugerem uma boa demanda e uma valorização estável no mercado, variando entre €116,712 e €117,966.
6. Impacto de Skills Específicas em Salários
A presença de ferramentas especializadas como Couchbase (um banco de dados NoSQL) e Twilio (plataforma de comunicação na nuvem) entre as skills mais bem pagas sugere que especializações em certas tecnologias podem ter um impacto significativo na remuneração.
Conclusão
Este conjunto de dados evidencia que certas tecnologias e ferramentas, principalmente aquelas relacionadas a DevOps, machine learning e blockchain, têm uma influência significativa na média salarial das vagas para Data Analyst. Profissionais que buscam maximizar seu potencial salarial devem considerar o desenvolvimento de habilidades em áreas como machine learning, infraestrutura de nuvem e automação, além de explorar tecnologias emergentes como blockchain e NLP.

Para mais informações e ferramentas de apoio ao desenvolvimento profissional, pode visitar o GPT Online.
*/