USE your_database_name;
CREATE TABLE tablequery (
  AIC VARCHAR(50) NOT NULL,
  PRINCIPIO_ATTIVO VARCHAR(255) DEFAULT NULL,
  DESCRIZIONE_GRUPPO VARCHAR(400) DEFAULT NULL,
  DENOMINAZIONE VARCHAR(255) DEFAULT NULL,
  TITOLARE_AIC VARCHAR(255) DEFAULT NULL,
  ATC_CODE VARCHAR(20) DEFAULT NULL,
  CODICE_GRUPPO_EQUIVALENZA VARCHAR(50) DEFAULT NULL,
  CLASS VARCHAR(5) DEFAULT NULL,
  `4.1_Therapeutic_indications` TEXT DEFAULT NULL,
  `4.4_Special_warnings` TEXT DEFAULT NULL,
  `4.5_Interactions` TEXT DEFAULT NULL,
  `4.6_Fertility` TEXT DEFAULT NULL,
  `4.7_Effects` TEXT DEFAULT NULL,
  `4.8_Undesirable_effects` TEXT DEFAULT NULL,
  `4.9_Overdose` TEXT DEFAULT NULL,
  `6.2_Incompatibilities` TEXT DEFAULT NULL,
  PRIMARY KEY (AIC)
) 
USE your_database_name;


SELECT * FROM tablequery
LIMIT 10;

SELECT `Codice Gruppo Equivalenza`, COUNT(*) AS medicine_count
FROM tablequery
GROUP BY `Codice Gruppo Equivalenza`
ORDER BY medicine_count DESC
LIMIT 10;



SELECT `4.3 Contraindications`, COUNT(*) AS frequency
FROM tablequery
WHERE `4.3 Contraindications` IS NOT NULL AND `4.3 Contraindications` != 'Not available'
GROUP BY `4.3 Contraindications`
ORDER BY frequency DESC
LIMIT 10;




SELECT 'ATC_CODE', COUNT(*) AS medicine_count
FROM tablequery
GROUP BY 'ATC_CODE'
ORDER BY medicine_count DESC
LIMIT 10;



SELECT AIC, `4.8 Undesirable effects (side effects)`
FROM tablequery


SELECT `Titolare AIC`, COUNT(*) AS medicine_count
FROM tablequery
GROUP BY `Titolare AIC`
ORDER BY medicine_count DESC
LIMIT 10;


