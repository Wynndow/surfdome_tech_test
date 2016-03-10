# Surfdome basket tech test

We are improving our basket. Until now we have only been able to offer a fixed delivery charge. We have never been able to offer customers an offer either.

Your task is to produce a domain model that can handle variable delivery rates and apply offers to a basket. There is no need to create an API or front end for this task, the API and front end teams will cover that.

Our product catalog is as follows...

| Sku  | Description | Price  |
| ---- | ----------- | ------ |
| T01  | T-shirt     | £19.99 |
| S01  | Shorts      | £14.99 |
| SK01 | Skateboard  | £85    |


Our delivery charges will be as follows...

| Basket Total | Delivery Charge |
| ------------ | --------------- |
| <£40         | £5.99           |
| £40 - £99.99 | £2.99           |
| >=£100       | FREE            |


We would also like to create two offers...

Add 2 t-shirts T01, get 25% off of each pair of T01 in the basket.
Buy shorts and a skateboard, add a t-shirt for free.

The basket should implemnt two features. 

1. Add a product by its sku. 
2. Return the basket total, including delivery, and subtracting any offers.

The following baskets should result in the correct totals...

| Basket Content | Total   |
| -------------- | ------- |
| T01, S01       | £40.97  |
| T01, SK01      | £104.99 |
| T01, T01       | £35.98  |
| T01, T01, T01  | £52.97  |
| T01, S01, SK01 | £102.98 |

#### Setup

After cloning the repository, run `bundle exec rspec` to run the existing test suite. The project is currently locked to ruby 2.3.0, however this can be modified if you have yet to install this version of ruby.

Good Luck!