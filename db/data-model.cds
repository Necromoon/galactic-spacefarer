namespace galactic.spacefarer;

entity Spacefarers {
  key ID                    : UUID;
    name                    : String;
    originPlanet            : String;
    spacesuitColor          : String;
    stardustCollection      : Integer;
    wormholeNavigationSkill : Integer;

    department              : Association to Departments;
    position                : Association to Positions;
}

entity Departments {
  key ID        : UUID;
    name        : String;
    description : String;
}

entity Positions {
  key ID   : UUID;
    title : String;
    level : String;
}