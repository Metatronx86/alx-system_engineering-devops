Postmortem: Easy Buy Ecommerce Platform Outage

Issue Summary:

Duration:
Start Time: January 20, 2024, 15:45 UTC
End Time: January 20, 2024, 18:30 UTC
Impact:
The Easy Buy product search service experienced a complete outage, affecting 30% of our users. Users reported slow response times, and the checkout process was intermittently failing.
Timeline:

Detection Time:
January 20, 2024, 15:45 UTC
Detection Method:
An automated monitoring alert flagged an abnormal increase in response time for the Easy Buy product search API.
Actions Taken:
Investigated network connectivity and server health.
Assumed it was a transient issue with the cloud provider.
Scaled up the Easy Buy product search service to handle increased load.
Misleading Paths:
Explored potential DDoS attacks due to recent marketing campaigns.
Investigated recent code deployments for issues.
Escalation:
Escalated to the Easy Buy infrastructure team for further investigation.
Root Cause and Resolution:

Root Cause:
The outage was caused by an unexpected surge in database connections due to a misconfigured connection pool setting in the Easy Buy product search service. This led to the Easy Buy database server becoming unresponsive.
Resolution:
Adjusted the connection pool settings in the Easy Buy product search service to ensure a more efficient use of database connections.
Implemented an automated system to monitor and alert on Easy Buy database connection pool metrics to catch similar issues proactively.
Corrective and Preventative Measures:

Improvements:
Enhance monitoring on critical services, particularly the Easy Buy product search, to detect anomalies early.
Implement chaos engineering practices specific to the Easy Buy platform to simulate and prepare for unexpected load scenarios.
Conduct regular audits of configuration settings for all Easy Buy services to identify and rectify potential misconfigurations.
Tasks:
Add additional alerts for Easy Buy database connection pool metrics.
Conduct a thorough review of the entire Easy Buy system's configuration settings to identify and rectify potential misconfigurations.
Develop and implement a chaos engineering framework tailored for the Easy Buy infrastructure.
Schedule a training session for the Easy Buy engineering team on identifying and responding to misconfigurations in critical services.
Conclusion:
This outage provided Easy Buy with valuable insights into the importance of robust monitoring and proactive configuration management. By addressing the root cause and implementing corrective measures, Easy Buy aims to enhance the resilience of its infrastructure, ensuring a more reliable and seamless shopping experience for our users. We appreciate the cooperation of all teams involved in swiftly resolving this issue and are committed to continuous improvement in Easy Buy's systems and processes.
