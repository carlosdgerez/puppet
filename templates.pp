
# Building a template for later use

<% - | String $hostname,
    String $environment,
    String $server:type,
    Bool $customer_facing,
    Bool $register_ticket_message,
    Bool $read_only_permitted,
| -%>

Welcome to <%= $hostname %>.

This is a <%= $environment %> <%= $server_type %>.


<% if $customer_facing { -%> 
Warning: This is a customer-facing system. Changes made here may be directly visible for customers.
<% } -%>

<% if $register_ticket_message { -%> 
For authorized changes, run 'register_ticket' to create a log entry for the aproved change ticket.
<% } -%>

<% if $read_only_permited { -%> 
Read-only use permitted without a ticket.
<% } -%>
