-- Creating tables for Insurance_DB

CREATE TABLE INSUREE_DEMO (
     id INT NOT NULL,
     Gender VARCHAR(40),
	 Age INT,
	 Driving_License INT,
	 Region_Code INT,
     PRIMARY KEY (id),
     UNIQUE (id)
);

CREATE TABLE PLAN_INFO (
     id INT NOT NULL,
	 Previously_Insured INT,
	 Vehicle_Age VARCHAR(40),
	 Vehicle_Damage VARCHAR(40),
	 Annual_Premium INT,
	 Policy_Sales_Channel INT,
	 Vintage INT,
	 Response INT,
     PRIMARY KEY (id),
	 FOREIGN KEY (id) REFERENCES INSUREE_DEMO (id),
     UNIQUE (id)
);


-- Joining INSUREE_DEMO and PLAN_INFO tables
CREATE TABLE INSURANCE_MODELING as
SELECT INSUREE_DEMO.id,
	INSUREE_DEMO.Age,
    INSUREE_DEMO.Gender,
	INSUREE_DEMO.Driving_License,
    INSUREE_DEMO.Region_Code,
	PLAN_INFO.annual_premium,
	PLAN_INFO.previously_insured,
	PLAN_INFO.vehicle_age,
	PLAN_INFO.vehicle_damage,
	PLAN_INFO.vintage,
	PLAN_INFO.response,
	PLAN_INFO.policy_sales_channel
FROM INSUREE_DEMO
LEFT JOIN PLAN_INFO
ON INSUREE_DEMO.id = PLAN_INFO.id;

