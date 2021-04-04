## Datasets

File hypothesis.csv<br/>
Hypothesis — a brief description of the hypothesis;<br/>
Reach-user coverage on a 10-point scale;<br/>
Impact — impact on users on a 10-point scale;<br/>
Confidence — confidence in the hypothesis on a 10-point scale;<br/>
Efforts — the cost of resources to test the hypothesis on a 10-point scale. The higher the value of Efforts, the more expensive the hypothesis test is.<br/>
<br/>
File orders.csv<br/>
TransactionID - order ID;<br/>
visitorID — ID of the user who made the order;<br/>
date — the date when the order was made;<br/>
revenue — the revenue of the order;<br/>
group — the A/B test group that the order was placed in.<br/>
<br/>
File visitors.csv<br/>
date — date;<br/>
group — A/B test group;<br/>
visitors — the number of users on the specified date in the specified A/B test group<br/>


## Challenges
We analyze the data of a large online store.<br/>
Together with the marketing department, we have prepared a list of hypotheses for increasing revenue.<br/>
We will prioritize the hypotheses, run an A/B test, and analyze the results.<br/>


## Used libraries
pandas<br/>
numpy<br/>
seaborn<br/>
scipy<br/>
matplotlib<br/>
statsmodels.stats.proportion
