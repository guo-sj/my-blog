# Vim Screen Fronzen

## Question
Sometimes, the vim screen becomes fronzen and I don't know why as well as how to 
fix it.

## Answer
The reason why the vim screen becomes fronzen is that the `Ctrl+s` was hitted, 
which means **XOFF** - locking the console output, and making it appear that 
nothing you typed was showing up.

As for unfreeze, run an **XON** command, which can be done by hitting `Ctrl+q`. 
Then all the output you generated since hitting XOFF will now be displayed, and 
output will be shown as usual.

