namespace br.com.saphanadev.relactcapm;

using sap from '@sap/cds/common';
using {  managed, User } from '@sap/cds/common';

//General types
entity Weeks : managed {
    key id: Integer;
        number: Integer;
        datefrom: Date;
        dateto: Date;
        activities: Association to many Activities;
}

entity Coordinates : managed {
    key id: Integer;
        name: String(100);
        manager: User;
        teams: Association to many  Teams;
}

entity Teams : managed {
    key id: Integer;
        name: String(100) not null;
        activities: Association to many Activities;
        coordenation: Association to Coordinates;
}

entity Activities : managed {
    key id : Integer;
        team: Association to Teams;
        week: Association to Weeks;
        activitiesDescription: LargeString;
}
