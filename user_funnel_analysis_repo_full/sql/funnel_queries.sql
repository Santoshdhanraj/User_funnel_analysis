
-- SQL: Funnel Conversion Analysis for SaaS Onboarding

-- Count of users at each funnel stage
SELECT
    COUNT(*) AS total_signed_up,
    COUNT(CASE WHEN email_verified THEN 1 END) AS total_email_verified,
    COUNT(CASE WHEN onboarding_completed THEN 1 END) AS total_onboarding_completed,
    COUNT(CASE WHEN feature_used THEN 1 END) AS total_feature_used,
    COUNT(CASE WHEN subscribed THEN 1 END) AS total_subscribed
FROM
    funnel_data;

-- Conversion rate by acquisition channel
SELECT
    acquisition_channel,
    COUNT(*) AS total_users,
    COUNT(CASE WHEN subscribed THEN 1 END) * 1.0 / COUNT(*) AS subscription_rate
FROM
    funnel_data
GROUP BY
    acquisition_channel
ORDER BY
    subscription_rate DESC;

-- Drop-off rate between funnel stages
SELECT
    'Email Verification to Onboarding' AS stage,
    COUNT(CASE WHEN email_verified AND NOT onboarding_completed THEN 1 END) * 1.0 /
    COUNT(CASE WHEN email_verified THEN 1 END) AS dropoff_rate
FROM
    funnel_data;
