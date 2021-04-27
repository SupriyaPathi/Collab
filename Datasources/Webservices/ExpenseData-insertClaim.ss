function insertClaim(){
	var queryStr = "INSERT INTO \"public\".\"Claims\" (\"empid\",\"managerid\",\"claimamount\",\"claimdescription\",\"claimstatus\") VALUES(?,?,?,?,?)";
	try{
		$s.query("ExpenseData", queryStr);
		$s.setLong(1, "empid");
		$s.setLong(2, "managerid");
		$s.setLong(3, "claimamount");
		$s.setString(4, "claimdescription");
		$s.setInteger(5, "claimstatus");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertClaim();
