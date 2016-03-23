
-- 
-- 2016-03-22T23:05:52-07:00
-- SQL FLAVOR: postgres

-- DROP TABLES
DROP TABLE IF EXISTS "root" CASCADE;
DROP TABLE IF EXISTS "AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail" CASCADE;
DROP TABLE IF EXISTS "rootrecordProjectListProject" CASCADE;
DROP TABLE IF EXISTS "bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram" CASCADE;
DROP TABLE IF EXISTS "ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail" CASCADE;
DROP TABLE IF EXISTS "trecordProjectListProjectR2aExhibitJointFundingListJointFunding" CASCADE;
DROP TABLE IF EXISTS "ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary" CASCADE;
DROP TABLE IF EXISTS "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" CASCADE;
DROP TABLE IF EXISTS "yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem" CASCADE;
DROP TABLE IF EXISTS "rootrecordProjectListProjectR4ExhibitScheduleProfile" CASCADE;
DROP TABLE IF EXISTS "ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail" CASCADE;
DROP TABLE IF EXISTS "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" CASCADE;
DROP TABLE IF EXISTS "tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail" CASCADE;

-- CREATE TABLES

-- root (root) | # of columns => 74
CREATE TABLE "root" (
	"id" TEXT,
	"meta_filename" TEXT,
	"meta_budget_year" TEXT,
	"meta_budget_cycle" TEXT,
	"meta_submission_date" TEXT,
	"meta_service_agency_name" TEXT,
	"meta_appropriation_code" TEXT,
	"meta_appropriation_name" TEXT,
	"record_@monetaryUnit" TEXT,
	"record_ProgramElementNumber_val" TEXT,
	"record_ProgramElementTitle_val" TEXT,
	"record_R1LineItemNumber_val" TEXT,
	"record_BudgetYear_val" TEXT,
	"record_BudgetCycle_val" TEXT,
	"record_SubmissionDate_val" TEXT,
	"record_ServiceAgencyName_val" TEXT,
	"record_AppropriationCode_val" TEXT,
	"record_AppropriationName_val" TEXT,
	"record_BudgetActivityNumber_val" TEXT,
	"record_BudgetActivityTitle_val" TEXT,
	"record_ProgramElementFunding_PriorYear_val" TEXT,
	"record_ProgramElementFunding_CurrentYear_val" TEXT,
	"record_ProgramElementFunding_BudgetYearOne_val" TEXT,
	"record_ProgramElementFunding_BudgetYearOneBase_val" TEXT,
	"record_ProgramElementFunding_BudgetYearOneOCO_val" TEXT,
	"record_ProgramElementFunding_BudgetYearTwo_val" TEXT,
	"record_ProgramElementFunding_BudgetYearThree_val" TEXT,
	"record_ProgramElementFunding_BudgetYearFour_val" TEXT,
	"record_ProgramElementFunding_BudgetYearFive_val" TEXT,
	"record_ProgramElementFunding_CostToComplete_val" TEXT,
	"record_ProgramElementFunding_TotalCost_val" TEXT,
	"record_ProgramElementFunding_AllPriorYears_val" TEXT,
	"record_ProgramElementMissionDescription_val" TEXT,
	"record_ChangeSummary_PreviousPresidentBudget_PriorYear_val" TEXT,
	"record_ChangeSummary_PreviousPresidentBudget_CurrentYear_val" TEXT,
	"record_ChangeSummary_PreviousPresidentBudget_BudgetYearOne_val" TEXT,
	"ord_ChangeSummary_PreviousPresidentBudget_BudgetYearOneBase_val" TEXT,
	"cord_ChangeSummary_PreviousPresidentBudget_BudgetYearOneOCO_val" TEXT,
	"record_ChangeSummary_CurrentPresidentBudget_PriorYear_val" TEXT,
	"record_ChangeSummary_CurrentPresidentBudget_CurrentYear_val" TEXT,
	"record_ChangeSummary_CurrentPresidentBudget_BudgetYearOne_val" TEXT,
	"cord_ChangeSummary_CurrentPresidentBudget_BudgetYearOneBase_val" TEXT,
	"ecord_ChangeSummary_CurrentPresidentBudget_BudgetYearOneOCO_val" TEXT,
	"record_ChangeSummary_TotalAdjustments_PriorYear_val" TEXT,
	"record_ChangeSummary_TotalAdjustments_CurrentYear_val" TEXT,
	"record_ChangeSummary_TotalAdjustments_BudgetYearOne_val" TEXT,
	"record_ChangeSummary_TotalAdjustments_BudgetYearOneBase_val" TEXT,
	"record_ChangeSummary_TotalAdjustments_BudgetYearOneOCO_val" TEXT,
	"djustmentDetails_CongressionalGeneralReductions_CurrentYear_val" TEXT,
	"_AdjustmentDetails_CongressionalGeneralReductions_PriorYear_val" TEXT,
	"_ChangeSummary_AdjustmentDetails_SBIRSTTRTransfer_PriorYear_val" TEXT,
	"hangeSummary_AdjustmentDetails_SBIRSTTRTransfer_CurrentYear_val" TEXT,
	"justmentDetails_OtherAdjustmentDetailList_OtherAdjustmentDetail" TEXT,
	"justmentDetails_CongressionalDirectedReductions_CurrentYear_val" TEXT,
	"AdjustmentDetails_CongressionalDirectedReductions_PriorYear_val" TEXT,
	"ummary_AdjustmentDetails_CongressionalRescissions_PriorYear_val" TEXT,
	"mary_AdjustmentDetails_CongressionalRescissions_CurrentYear_val" TEXT,
	"angeSummary_AdjustmentDetails_CongressionalAdds_CurrentYear_val" TEXT,
	"ChangeSummary_AdjustmentDetails_CongressionalAdds_PriorYear_val" TEXT,
	"djustmentDetails_CongressionalDirectedTransfers_CurrentYear_val" TEXT,
	"_AdjustmentDetails_CongressionalDirectedTransfers_PriorYear_val" TEXT,
	"rd_ChangeSummary_AdjustmentDetails_Reprogrammings_PriorYear_val" TEXT,
	"_ChangeSummary_AdjustmentDetails_Reprogrammings_CurrentYear_val" TEXT,
	"record_ChangeSummary_SummaryExplanation_val" TEXT,
	"record_ProjectList_Project" TEXT,
	"record_ProgramElementNote_val" TEXT,
	"record_@format" TEXT,
	"record_MdapCodes_val" TEXT,
	"record_R1LineNumber_val" TEXT,
	"record_MdapCode_val" TEXT,
	"record_PriorYearsDelta_val" TEXT,
	"record_@classification" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT);

-- AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail (root.record.ChangeSummary.AdjustmentDetails.OtherAdjustmentDetailList.OtherAdjustmentDetail) | # of columns => 10
CREATE TABLE "AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail" (
	"Title_val" TEXT,
	"Funding_PriorYear_val" TEXT,
	"Funding_CurrentYear_val" TEXT,
	"Funding_BudgetYearOne_val" TEXT,
	"Funding_BudgetYearOneBase_val" TEXT,
	"Funding_BudgetYearOneOCO_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- rootrecordProjectListProject (root.record.ProjectList.Project) | # of columns => 56
CREATE TABLE "rootrecordProjectListProject" (
	"ProjectNumber_val" TEXT,
	"ProjectTitle_val" TEXT,
	"ProjectFunding_PriorYear_val" TEXT,
	"ProjectFunding_CurrentYear_val" TEXT,
	"ProjectFunding_BudgetYearOne_val" TEXT,
	"ProjectFunding_BudgetYearOneBase_val" TEXT,
	"ProjectFunding_BudgetYearOneOCO_val" TEXT,
	"ProjectFunding_BudgetYearTwo_val" TEXT,
	"ProjectFunding_BudgetYearThree_val" TEXT,
	"ProjectFunding_BudgetYearFour_val" TEXT,
	"ProjectFunding_BudgetYearFive_val" TEXT,
	"ProjectFunding_CostToComplete_val" TEXT,
	"ProjectFunding_TotalCost_val" TEXT,
	"ProjectFunding_AllPriorYears_val" TEXT,
	"R2aExhibit_ProjectArticles_PriorYear_val" TEXT,
	"R2aExhibit_ProjectArticles_CurrentYear_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearOne_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearOneBase_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearOneOCO_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearTwo_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearThree_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearFour_val" TEXT,
	"R2aExhibit_ProjectArticles_BudgetYearFive_val" TEXT,
	"R2aExhibit_ProjectArticles_AllPriorYears_val" TEXT,
	"R2aExhibit_ProjectMissionDescription_val" TEXT,
	"t_AccomplishmentPlannedProgramList_AccomplishmentPlannedProgram" TEXT,
	"R2aExhibit_AcquisitionStrategy_val" TEXT,
	"R2aExhibit_PerformanceMetrics_val" TEXT,
	"R2aExhibit_ProjectNote_val" TEXT,
	"hibit_OtherProgramFundingSummaryList_OtherProgramFundingSummary" TEXT,
	"R2aExhibit_CongressionalAddDetailList_CongressionalAddDetail" TEXT,
	"R2aExhibit_JointFundingList_JointFunding" TEXT,
	"R2aExhibit_OtherProgramFundingSummaryRemarks_val" TEXT,
	"R3Exhibit_CostCategoryGroupList_CostCategoryGroup" TEXT,
	"R3Exhibit_Remarks_val" TEXT,
	"R4Exhibit_ScheduleProfile" TEXT,
	"R4aExhibit_SubProjectScheduleList_SubProjectSchedule" TEXT,
	"R4aExhibit_ScheduleDetailList_ScheduleDetail" TEXT,
	"R4aExhibit_ScheduleDetailNote_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_PriorYear_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_CurrentYear_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_BudgetYearOne_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_BudgetYearTwo_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_BudgetYearThree_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_BudgetYearFour_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_BudgetYearFive_val" TEXT,
	"R5Exhibit_TerminationLiability_Cost_AllPriorYears_val" TEXT,
	"R5Exhibit_TerminationLiability_Remarks_val" TEXT,
	"SpecialProject_val" TEXT,
	"MdapCode_val" TEXT,
	"PriorYearsDelta_val" TEXT,
	"@suppressProjectPDF" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram (root.record.ProjectList.Project.R2aExhibit.AccomplishmentPlannedProgramList.AccomplishmentPlannedProgram) | # of columns => 20
CREATE TABLE "bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram" (
	"Title_val" TEXT,
	"Accomplishment_PriorYear_Funding_val" TEXT,
	"Accomplishment_PriorYear_Articles_val" TEXT,
	"Accomplishment_PriorYear_Text_val" TEXT,
	"PlannedProgram_CurrentYear_Funding_val" TEXT,
	"PlannedProgram_CurrentYear_Articles_val" TEXT,
	"PlannedProgram_CurrentYear_Text_val" TEXT,
	"PlannedProgram_BudgetYearOne_Funding_val" TEXT,
	"PlannedProgram_BudgetYearOne_Articles_val" TEXT,
	"PlannedProgram_BudgetYearOneBase_Funding_val" TEXT,
	"PlannedProgram_BudgetYearOneBase_Articles_val" TEXT,
	"PlannedProgram_BudgetYearOneBase_Text_val" TEXT,
	"PlannedProgram_BudgetYearOneOCO_Funding_val" TEXT,
	"PlannedProgram_BudgetYearOneOCO_Text_val" TEXT,
	"PlannedProgram_BudgetYearOneOCO_Articles_val" TEXT,
	"Description_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail (root.record.ProjectList.Project.R2aExhibit.CongressionalAddDetailList.CongressionalAddDetail) | # of columns => 9
CREATE TABLE "ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail" (
	"Title_val" TEXT,
	"CurrentYear_Funding_val" TEXT,
	"CurrentYear_Text_val" TEXT,
	"PriorYear_Funding_val" TEXT,
	"PriorYear_Text_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- trecordProjectListProjectR2aExhibitJointFundingListJointFunding (root.record.ProjectList.Project.R2aExhibit.JointFundingList.JointFunding) | # of columns => 14
CREATE TABLE "trecordProjectListProjectR2aExhibitJointFundingListJointFunding" (
	"Title_val" TEXT,
	"Funding_PriorYear_val" TEXT,
	"Funding_CurrentYear_val" TEXT,
	"Funding_BudgetYearOne_val" TEXT,
	"Funding_BudgetYearOneBase_val" TEXT,
	"Funding_BudgetYearOneOCO_val" TEXT,
	"Funding_TotalCost_val" TEXT,
	"Funding_TotalPreviousYears_val" TEXT,
	"Funding_CostToComplete_val" TEXT,
	"Funding_TargetValue_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary (root.record.ProjectList.Project.R2aExhibit.OtherProgramFundingSummaryList.OtherProgramFundingSummary) | # of columns => 17
CREATE TABLE "ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary" (
	"LineItem_val" TEXT,
	"Title_val" TEXT,
	"Funding_PriorYear_val" TEXT,
	"Funding_CurrentYear_val" TEXT,
	"Funding_BudgetYearOne_val" TEXT,
	"Funding_BudgetYearOneBase_val" TEXT,
	"Funding_BudgetYearOneOCO_val" TEXT,
	"Funding_BudgetYearTwo_val" TEXT,
	"Funding_BudgetYearThree_val" TEXT,
	"Funding_BudgetYearFour_val" TEXT,
	"Funding_BudgetYearFive_val" TEXT,
	"Funding_CostToComplete_val" TEXT,
	"Funding_TotalCost_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup (root.record.ProjectList.Project.R3Exhibit.CostCategoryGroupList.CostCategoryGroup) | # of columns => 7
CREATE TABLE "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" (
	"Name_val" TEXT,
	"CostCategoryItemList_CostCategoryItem" TEXT,
	"Remarks_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem (root.record.ProjectList.Project.R3Exhibit.CostCategoryGroupList.CostCategoryGroup.CostCategoryItemList.CostCategoryItem) | # of columns => 23
CREATE TABLE "yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem" (
	"Name_val" TEXT,
	"ContractMethod_val" TEXT,
	"ContractType_val" TEXT,
	"PerformingActivity_val" TEXT,
	"PerformingActivityLocation_val" TEXT,
	"Cost_TotalPreviousYears_val" TEXT,
	"Cost_CurrentYear_Amount_val" TEXT,
	"Cost_CurrentYear_AwardDate_val" TEXT,
	"Cost_BudgetYearOne_Amount_val" TEXT,
	"Cost_BudgetYearOneBase_Amount_val" TEXT,
	"Cost_BudgetYearOneBase_AwardDate_val" TEXT,
	"Cost_BudgetYearOneOCO_Amount_val" TEXT,
	"Cost_BudgetYearOneOCO_AwardDate_val" TEXT,
	"Cost_CostToComplete_val" TEXT,
	"Cost_TotalCost_val" TEXT,
	"Cost_TargetValue_val" TEXT,
	"Cost_PriorYear_Amount_val" TEXT,
	"Cost_PriorYear_AwardDate_val" TEXT,
	"FundingVehicle_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- rootrecordProjectListProjectR4ExhibitScheduleProfile (root.record.ProjectList.Project.R4Exhibit.ScheduleProfile) | # of columns => 5
CREATE TABLE "rootrecordProjectListProjectR4ExhibitScheduleProfile" (
	"ImageFileName_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail (root.record.ProjectList.Project.R4aExhibit.ScheduleDetailList.ScheduleDetail) | # of columns => 9
CREATE TABLE "ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail" (
	"EventTitle_val" TEXT,
	"Schedule_Start_Quarter_val" TEXT,
	"Schedule_Start_Year_val" TEXT,
	"Schedule_End_Quarter_val" TEXT,
	"Schedule_End_Year_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule (root.record.ProjectList.Project.R4aExhibit.SubProjectScheduleList.SubProjectSchedule) | # of columns => 6
CREATE TABLE "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" (
	"Title_val" TEXT,
	"ScheduleDetailList_ScheduleDetail" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail (root.record.ProjectList.Project.R4aExhibit.SubProjectScheduleList.SubProjectSchedule.ScheduleDetailList.ScheduleDetail) | # of columns => 9
CREATE TABLE "tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail" (
	"EventTitle_val" TEXT,
	"Schedule_Start_Quarter_val" TEXT,
	"Schedule_Start_Year_val" TEXT,
	"Schedule_End_Quarter_val" TEXT,
	"Schedule_End_Year_val" TEXT,
	"@ROWID" TEXT NOT NULL,
	"@RECORDID" TEXT,
	"@PARENT" TEXT,
	"@PARENTROWID" TEXT);

-- ADD PRIMARY KEYS
ALTER TABLE "root" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "rootrecordProjectListProject" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "trecordProjectListProjectR2aExhibitJointFundingListJointFunding" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "rootrecordProjectListProjectR4ExhibitScheduleProfile" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" ADD PRIMARY KEY ("@ROWID");
ALTER TABLE "tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail" ADD PRIMARY KEY ("@ROWID");

-- ADD UNIQUE CONSTRAINTS
ALTER TABLE "root" ADD CONSTRAINT "UQ_root_@RECORDID" UNIQUE ("@RECORDID");

-- ADD FOREIGN KEYS
ALTER TABLE "AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "root" ("@ROWID");
ALTER TABLE "AdjustmentDetailsOtherAdjustmentDetailListOtherAdjustmentDetail" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "rootrecordProjectListProject" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "root" ("@ROWID");
ALTER TABLE "rootrecordProjectListProject" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "bitAccomplishmentPlannedProgramListAccomplishmentPlannedProgram" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "ojectR2aExhibitCongressionalAddDetailListCongressionalAddDetail" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "trecordProjectListProjectR2aExhibitJointFundingListJointFunding" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "trecordProjectListProjectR2aExhibitJointFundingListJointFunding" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "ExhibitOtherProgramFundingSummaryListOtherProgramFundingSummary" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "ojectListProjectR3ExhibitCostCategoryGroupListCostCategoryGroup" ("@ROWID");
ALTER TABLE "yGroupListCostCategoryGroupCostCategoryItemListCostCategoryItem" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "rootrecordProjectListProjectR4ExhibitScheduleProfile" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "rootrecordProjectListProjectR4ExhibitScheduleProfile" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "ordProjectListProjectR4aExhibitScheduleDetailListScheduleDetail" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "rootrecordProjectListProject" ("@ROWID");
ALTER TABLE "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
ALTER TABLE "tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail" ADD FOREIGN KEY ("@PARENTROWID") REFERENCES "ctListProjectR4aExhibitSubProjectScheduleListSubProjectSchedule" ("@ROWID");
ALTER TABLE "tScheduleListSubProjectScheduleScheduleDetailListScheduleDetail" ADD FOREIGN KEY ("@RECORDID") REFERENCES "root" ("@RECORDID");
