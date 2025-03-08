create database WPPOOL
SELECT * FROM `wppool_growth_data_sample_20k`

## changing the dates from str to date
UPDATE `wppool_growth_data_sample_20k` 
SET install_date = str_to_date(install_date, "%m/%d/%Y");
UPDATE `wppool_growth_data_sample_20k` 
SET last_active_date = str_to_date(last_active_date, "%m/%d/%Y");

## removing duplicate user records, keeping the latest entry
DELETE t1 FROM `wppool_growth_data_sample_20k` t1
JOIN(
	SELECT user_id, MAX(last_active_date) AS latest_date
    FROM `wppool_growth_data_sample_20k`
    GROUP BY user_id
) t2
ON t1.user_id = t2.user_id AND t1.last_active_date < t2.latest_date;

## There are no duplicates found

## Convert empty strings in pro_upgrade_date to null
UPDATE `wppool_growth_data_sample_20k` 
SET pro_upgrade_date = NULL
WHERE pro_upgrade_date = '' OR pro_upgrade_date IS NULL;

## changing pro_upgrade_date from str to date
UPDATE `wppool_growth_data_sample_20k`
SET pro_upgrade_date = str_to_date(pro_upgrade_date, "%m/%d/%Y")
WHERE pro_upgrade_date IS NOT NULL;

## Fill missing 'plan_type' based on subscription type
## Set plan_type to null for free users(since they don't have a plan type)
UPDATE `wppool_growth_data_sample_20k`
SET plan_type = NULL
WHERE subscription_type = 'Free';

## set missing plan_type to 'unknown' for pro users
UPDATE `wppool_growth_data_sample_20k`
SET plan_type = 'Unknown'
WHERE subscription_type = 'Pro' AND (plan_type IS NULL OR plan_type = '');
## since there is no missing data for the pro users nothing has changed

## For summary
SELECT COUNT(*) AS total_records FROM wppool_growth_data_sample_20k;

SELECT subscription_type, COUNT(*) AS user_count
FROM wppool_growth_data_sample_20k
GROUP BY subscription_type;

SELECT * FROM `wppool_growth_data_sample_20k`;

## USER ENGAGEMENT ANALYSIS
SELECT subscription_type, 
       ROUND(AVG(total_sessions), 2) AS avg_sessions
FROM wppool_growth_data_sample_20k
GROUP BY subscription_type;

## Find the top 5 most active users based on total sessions
SELECT user_id, total_sessions
FROM `wppool_growth_data_sample_20k`
ORDER BY total_sessions
LIMIT 5;

## Top 5 countries with the highest engagement based on total sessions
SELECT country, SUM(total_sessions) AS total_engagement
FROM `wppool_growth_data_sample_20k`
GROUP BY country
ORDER BY total_engagement DESC
LIMIT 5;

# CHURN ANALYSIS
# overall churn rate for free vs pro users
SELECT subscription_type,
   ROUND(COUNT(CASE WHEN churned = 1 THEN user_id END)/ COUNT(user_id) * 100, 2) as churn_rate
FROM `wppool_growth_data_sample_20k`
GROUP BY subscription_type;
