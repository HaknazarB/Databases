CREATE TRIGGER report_ready AFTER INSERT ON data_table
FOR EACH ROW 
BEGIN 
	INSERT INTO data_report_ready (data_type_id, report_id, account_id, `data`, cell_ext_name ) 
	SELECT data_type_id, data_table.report_id, account_id, `data`, cells.ext_name   
	FROM data_table 
	LEFT JOIN cells 
	ON cells.name = data_table.cell_name 
	WHERE data_table.id = NEW.id;
END


