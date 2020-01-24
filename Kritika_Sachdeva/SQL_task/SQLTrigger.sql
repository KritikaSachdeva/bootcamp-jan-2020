USE [practice]
GO


ALTER TRIGGER ..[dbo].[trigger_for_path2]
   ON  ..[dbo].[table_for_paths]
   AFTER UPDATE
AS 
BEGIN
	DECLARE @update varchar(30)
	SET @update = (SELECT Path from inserted)
	EXECUTE ..table_for_paths @update

END
