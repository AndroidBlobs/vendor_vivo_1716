/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '510' AND NUMBER = '199';

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '510' AND NUMBER = '199';

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '510' AND NUMBER = '199';

COMMIT TRANSACTION;