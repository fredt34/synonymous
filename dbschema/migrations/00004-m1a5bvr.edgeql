CREATE MIGRATION m1a5bvr7v6gbkw3v6ltcx5cjartcvzdb6klekiomhmfaas7257zhva
    ONTO m1vtqoeg73be54jyhi7s37ets2iz5vmh7tpaew7nskewloui3qw6yq
{
  CREATE TYPE default::Language {
      CREATE REQUIRED PROPERTY code: std::str;
      CREATE PROPERTY details: std::str;
      CREATE REQUIRED PROPERTY en_title: std::str;
      CREATE REQUIRED PROPERTY title: std::str;
  };
  CREATE TYPE default::Role {
      CREATE PROPERTY details: std::str;
      CREATE PROPERTY name: std::str;
  };
  CREATE TYPE default::User {
      CREATE MULTI LINK languages: default::Language;
      CREATE MULTI LINK roles: default::Role;
      CREATE PROPERTY email: std::str;
      CREATE PROPERTY name: std::str;
  };
};
