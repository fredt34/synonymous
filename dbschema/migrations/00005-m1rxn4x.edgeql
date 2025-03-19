CREATE MIGRATION m1rxn4xmndec3wivacsjv6fky2xfkbdeiudtfskqxoaykp6z7eikgq
    ONTO m1a5bvr7v6gbkw3v6ltcx5cjartcvzdb6klekiomhmfaas7257zhva
{
  CREATE TYPE default::Event {
      CREATE LINK author: default::User;
      CREATE PROPERTY date: std::datetime {
          CREATE REWRITE
              INSERT 
              USING (std::datetime_of_statement());
      };
      CREATE PROPERTY type: default::EventType;
  };
  CREATE TYPE default::Mark {
      CREATE LINK author: default::User;
      CREATE PROPERTY level: std::int32;
  };
};
