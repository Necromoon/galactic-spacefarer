namespace galactic.spacefarer;

@odata.draft.enabled
entity Spacefarers {

  key ID                    : UUID;
  name                      : String;
  originPlanet              : String;  
  spacesuitColor            : String;
  stardustCollection        : Integer;
  wormholeNavigationSkill   : Integer;

  department                : Association to Departments;
  position                  : Association to Positions;
}

@readonly
entity Departments {
  key ID        : UUID;
    name        : String;
    description : String;
}


@readonly
entity Positions {
  key ID   : UUID;
    title : String;
    level : String;
}