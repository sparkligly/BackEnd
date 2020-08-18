/**
	 * 특정 게시글 제목 검색
	 * 
	 * @author 이지나
	 * @param  검색 게시글 title
	 * @return 입력값과 일치하는  검색 게시글 title 반환
	 */
	// List<BoardVO> mbFinder(String keyword);
	private void mbFinder(String keyword){
		memBoard(); // 게시판의 정보를 받는다.
		System.out.println("검색어");
		Scanner in = new Scanner(System.in);
	    List<BoardVO> mbFinder(String keyword);
		String input = "";
		
		keyword = in.nextLine(); //in.nextLine에 넣은 값을 keyword 에 넣는다.
		//제목 검색
		System.out.println("검색하려는 제목을 입력해주세요.");
		// contains를 이용한 방법(true, false 반환)
		if(board_title.contains(keyword))
		    System.out.println("문자열 있음!");
		else
		    System.out.println("문자열 없음!");
		 
		
	}
}