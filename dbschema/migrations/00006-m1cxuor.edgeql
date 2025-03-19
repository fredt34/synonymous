CREATE MIGRATION m1cxuorlwu3nmrmad3bbmnainag2o72ck76ypeporepcaiftyxzhvq
    ONTO m1rxn4xmndec3wivacsjv6fky2xfkbdeiudtfskqxoaykp6z7eikgq
{
  CREATE TYPE default::Word {
      CREATE REQUIRED PROPERTY word: std::str;
      CREATE INDEX ON (std::str_lower(.word));
      CREATE REQUIRED LINK author: default::User {
          EXTENDING default::authored_with_details;
      };
      CREATE REQUIRED LINK language: default::Language;
      CREATE MULTI LINK mark: default::Mark;
      CREATE REQUIRED MULTI LINK validators: default::User {
          EXTENDING default::authored_with_details;
      };
      CREATE PROPERTY details: std::str;
  };
};
