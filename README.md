# README

* Ruby version
ruby-version 2.5.0

This app is a nested resource where a salesperson has_one totalannualcompensation and a totalannualcompensation belongs_to a salesperson. Plural as far as AR is concerned is salespeople in this context. 
A salesperson will earn a fixed salary of $100,000

A salesperson will also receive a commission as a sales incentive. Commission is a percentage of the salesperson’s annual sales. The current commission is 5% of total sales

The total annual compensation is the fixed salary plus the commission earned.
# Current Objectives
# How do I navigate to the url for this readme
# My objective is for the link after "Total Compensation for " on show.html.erb for people to point to index.html for total_annual_compensation. 
# Somewhere in this process the logic for adding total sales for the year to fixed salary and calculating a commision of 5%
# Build out the edit and new views with crud capability for allowing the user to create these components 
