## Datasets
visits_log.csv structure<br/>

Uid — unique user ID,<br/>
Device-user's device category,<br/>
Start Ts — date and time of the session start,<br/>
End Ts — end date and time of the session,<br/>
Source Id — ID of the source of traffic to the site.<br/>

orders_log.csv structure

Uid — unique user ID,<br/>
Buy Ts — date and time of the order,<br/>
Revenue — the order amount.<br/>

costs.csv structure

source_id — the ID of the advertising source,<br/>
dt-the date of the advertising campaign,<br/>
costs-the expenses for this campaign.<br/>


## Challenges
Context<br/>
The first task: to help marketers reduce costs-to abandon unprofitable sources of traffic and reallocate the budget.<br/>
<br/>
There are data from June 2017 to the end of May 2018:<br/>
<br/>
- server log with data on site visits,<br/>
- unloading of all orders for this period,<br/>
- statistics of advertising expenses.<br/>
<br/>
We have to study:<br/>
<br/>
- how customers use the service,<br/>
- when making their first purchases on the site,<br/>
- how much money does each client bring to the company,<br/>
- when the cost of attracting a customer pays off.<br/>
<br/>
Revenue is measured in $


## Used libraries
pandas<br/>
numpy<br/>
seaborn<br/>
scipy<br/>
matplotlib<br/>
