CREATE MIGRATION m1vtqoeg73be54jyhi7s37ets2iz5vmh7tpaew7nskewloui3qw6yq
    ONTO m1lvr2x3shwt3fvq2al7dnectkjjzri3zhindnbb3t5xi5gu4ysbhq
{
  CREATE SCALAR TYPE default::EventType EXTENDING enum<`Create`, Read, `Update`, `Delete`>;
};
