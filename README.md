# CQRS with two apps

As Greg Young once stated:
> Starting with CQRS, CQRS is simply the creation of two objects where there was previously only one. The separation occurs based upon whether the methods are a command or a query (the same definition that is used by Meyer in Command and Query Separation, a command is any method that mutates state and a query is any method that returns a value).

> (...)

> The largest possible benefit though is that it recognizes that their are different architectural properties when dealing with commands and queries … for example it allows us to host the two services differently eg: we can host the read service on 25 servers and the write service on two. The processing of commands and queries is fundamentally asymmetrical, and scaling the services symmetrically does not make a lot of sense.

> via http://codebetter.com/gregyoung/2010/02/16/cqrs-task-based-uis-event-sourcing-agh/

This is an experiment to take CQRS on application/stack level and have two applications where there was previously one.
