using { galactic.spacefarer as my } from '../db/data-model';

@requires: 'authenticated-user'
service GalacticSpacefarerService {
  entity Spacefarers as projection on my.Spacefarers;
  entity Departments as projection on my.Departments;
  entity Positions as projection on my.Positions;

}