class UserExceptionTest{
	public void test1(String n)throws UserException{
		System.out.println("Test1");
		if(n.length() <1) {
			throw new UserException("아무것도 없다네");
		} else {
			throw new UserException("최종 예선",703);
		}
	}
	public static void main(String[] args) {
		UserExceptionTest ut = new UserExceptionTest();
		try {
			ut.test1("Test");
		} catch(UserException ue) {
//			System.out.println(ue.getMessage());
			ue.printStackTrace();
		}
	}
}
