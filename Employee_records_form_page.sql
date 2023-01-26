-- To create a new table 
CREATE TABLE "MY_SCHEMA"."EMPLOYEES" 
   (    "EMPLOYEE_ID" NUMBER(4,0), 
    "FIRST_NAME" VARCHAR2(20), 
    "LAST_NAME" VARCHAR2(25), 
    "EMAIL" VARCHAR2(25), 
    "PHONE_NUMBER" VARCHAR2(20), 
    "HIRE_DATE" DATE, 
    "JOB_ID" VARCHAR2(10), 
    "SALARY" NUMBER(8,2), 
    "COMMISSION_PCT" NUMBER(2,2), 
    "MANAGER_ID" NUMBER(4,0), 
    "DEPARTMENT_ID" NUMBER(4,0)
   );

-- To create a form page 
BEGIN
  APEX_APPLICATION.CREATE_PAGE(
    p_application_id => 1, 
    p_page_name => 'Employee Form', 
    p_template_name => 'Form', 
    p_region_placement => 'Body');
  APEX_APPLICATION.CREATE_FORM_PAGE_ITEM(
    p_page_name => 'Employee Form', 
    p_item_name => 'EMPLOYEE_ID', 
    p_display_name => 'Employee ID', 
    p_data_type => 'NUMBER');
  APEX_APPLICATION.CREATE_FORM_PAGE_ITEM(
    p_page_name => 'Employee Form', 
    p_item_name => 'FIRST_NAME', 
    p_display_name => 'First Name', 
    p_data_type => 'VARCHAR2'); 
END;

-- To create a report page 
BEGIN
  APEX_APPLICATION.CREATE_PAGE(
    p_application_id => 1, 
    p_page_name => 'Employee Report', 
    p_template_name => 'Report', 
    p_region_placement => 'Body');
  APEX_APPLICATION.CREATE_REPORT_PAGE_ITEM(
    p_page_name => 'Employee Report', 
    p_item_name => 'EMPLOYEE_ID', 
    p_display_name => 'Employee ID');
  APEX_APPLICATION.CREATE_REPORT_PAGE_ITEM(
    p_page_name => 'Employee Report', 
    p_item_name => 'FIRST_NAME', 
    p_display_name => 'First Name');
END;
