DELETE
FROM event_records
WHERE category = 'addressHierarchy'
  AND uri IS NULL;
