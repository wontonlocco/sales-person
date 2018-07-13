# README

* Ruby version
ruby-version 2.5.0

This app is a nested resource where a salesperson has_one totalannualcompensation and a totalannualcompensation belongs_to a salesperson. Plural as far as AR is concerned is salespeople in this context. 
A salesperson will earn a fixed salary of $100,000

A salesperson will also receive a commission as a sales incentive. Commission is a percentage of the salesperson’s annual sales. The current commission is 5% of total sales

The total annual compensation is the fixed salary plus the commission earned.

