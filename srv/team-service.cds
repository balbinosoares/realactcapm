using br.com.saphanadev.relactcapm as relactcapm from '../db/data-model';

service TeamService {
  entity Activities  @readonly as projection on relactcapm.Activities;
  entity Teams @readonly as projection on relactcapm.Teams{
      *,
      activities: redirected to Activities
  };
  entity Coordinates @readonly as projection on relactcapm.Coordinates;
  entity Weeks @readonly as projection on relactcapm.Weeks{
      *,
      activities: redirected to Activities
  };


  entity currentWeekActivity as projection on relactcapm.CurrentWeekActivity;
}