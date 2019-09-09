DELETE
FROM event_records
WHERE UUID IN
        (SELECT T.event_uuid
         FROM
             (SELECT UUID AS event_uuid,
                             substring(OBJECT, 29, 36) AS UUID,
                             OBJECT
              FROM event_records
              WHERE title = 'Patient') AS T
         LEFT JOIN person ON T.uuid = person.uuid
         WHERE person.uuid IS NULL);

DELETE
FROM event_records
WHERE UUID IN
        (SELECT T.event_uuid
         FROM
             (SELECT UUID AS event_uuid,
                             substring(OBJECT, 48, 36) AS UUID,
                             OBJECT
              FROM event_records
              WHERE title = 'Encounter') AS T
         LEFT JOIN encounter ON T.uuid = encounter.uuid
         WHERE encounter.uuid IS NULL);
