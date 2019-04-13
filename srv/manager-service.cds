using br.com.saphanadev.relactcapm as relactcapm from '../db/data-model';

service ManagerService {
  entity Activities  @readonly as projection on relactcapm.Activities;
  entity Teams @readonly as projection on relactcapm.Teams;
  entity Coordinates @readonly as projection on relactcapm.Coordinates;
  entity Weeks @readonly as projection on relactcapm.Weeks;
}