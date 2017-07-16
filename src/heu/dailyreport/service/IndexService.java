package heu.dailyreport.service;




public interface IndexService {
	public String findUserIdByIndex(String grpId) throws Exception;
	public String findGrpIdByIndex(String deptId) throws Exception;
	public String findDailyReportIdByIndex(String date, String userId) throws Exception;
    public String findDepartmentIdByIndex() throws Exception;
}
