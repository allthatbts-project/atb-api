﻿SELECT 
	USER_NO
	,NICKNAME
	,EMAIL
	,SECRET
	,CREATE_DT
	,UPDATE_DT
	,AUTH_TYPE
	,CONFIRM_YN
FROM TB_USER
WHERE EMAIL = @EMAIL