-- -----------------------------------------------------
SELECT 
accounts.login as login,
companies.name as company,
users.first_name, 
users.last_name, 
temp.name
FROM users
LEFT JOIN accounts
ON users.account_id = accounts.id 
JOIN companies
ON accounts.company_id = companies.id
JOIN
	(SELECT name, account_id 
	FROM configs
	LEFT JOIN company_configs 
	ON company_configs.config_id = configs.id
	 ) as temp
 ON users.account_id = temp.account_id
	GROUP BY login

-- ----------------------------------------------------


