# => BOB
# => BOB

# name and save_name point to the same object and when we mutate the caller
# as in the case of name.upcase!, the actual object's value is changed and
# the object id is still the same. Both variables are still pointing to the
# same object as there has been no reassignment.
