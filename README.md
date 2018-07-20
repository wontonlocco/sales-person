# README

* Ruby version
ruby-version 2.5.0

This app is a nested resource where a salesperson has_one totalannualcompensation and a totalannualcompensation belongs_to a salesperson. Plural as far as AR is concerned is salespeople in this context. 
A salesperson will earn a fixed salary of $100,000

A salesperson will also receive a commission as a sales incentive. Commission is a percentage of the salesperson’s annual sales. The current commission is 5% of total sales

The total annual compensation is the fixed salary plus the commission earned.

# Current Objectives

# Basic Crud functionality in place with devise.

# GoogleMap API is passed the address property but when it displays map it does not seem to pull city and state from address, rendering a map of the world instead of a more specific city and state.. This applies for seed data where official address data is generated.
