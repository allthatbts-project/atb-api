UPDATE TB_BOARD
SET DELETED_YN = 'Y'
	,DELETED_DT = (SELECT NOW())
WHERE SEQ = @SEQ
