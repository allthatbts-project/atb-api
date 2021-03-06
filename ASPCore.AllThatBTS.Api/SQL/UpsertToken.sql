﻿INSERT INTO TB_AUTH 
(
	USER_NO,
	ACCESS_TOKEN,
	REFRESH_TOKEN,
	SCOPE,
	ACCESS_EXPIRE_DT,
	REFRESH_EXPIRE_DT,
	CREATE_DT,
	UPDATE_DT
) 
VALUES (
	@USER_NO,
	@ACCESS_TOKEN,
	@REFRESH_TOKEN,
	@SCOPE,
	@ACCESS_EXPIRE_DT,
	@REFRESH_EXPIRE_DT,
	(SELECT NOW()),
	NULL
) ON DUPLICATE KEY UPDATE 
	ACCESS_TOKEN = @ACCESS_TOKEN,
	REFRESH_TOKEN = @REFRESH_TOKEN,
	ACCESS_EXPIRE_DT = @ACCESS_EXPIRE_DT,
	REFRESH_EXPIRE_DT = @REFRESH_EXPIRE_DT,
	UPDATE_DT = (SELECT NOW())