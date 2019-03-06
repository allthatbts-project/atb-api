﻿INSERT INTO TB_USER
(
	USER_NO,
	NICKNAME,
	EMAIL,
	SECRET,
	AUTH_TYPE,
	CONFIRM_YN,
	CREATE_DT,
	UPDATE_DT
)
VALUES
(
	(SELECT UPPER(LEFT(UUID(), 8))),
	@NICKNAME,
	@EMAIL,
	@SECRET,
	@AUTH_TYPE,
	@CONFIRM_YN,
	(SELECT NOW()),
	(SELECT NOW())
)