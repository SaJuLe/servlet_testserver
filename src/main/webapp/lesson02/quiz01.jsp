<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	
	for (int i = 0; i < scores.length; i++) {
		sum = sum + scores[i];	
	}
	
	double avg = (double)sum / scores.length;
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	
	Iterator<String> iter = scoreList.iterator();
	while (iter.hasNext()) {
		if (iter.next().equals("O")) {
			score = score + 10;
		}
	}

	String birthDay = "20010820";
	String birthYear = birthDay.substring(0, 4);
	
	int age = 2021 - Integer.valueOf(birthYear) + 1;
%>

<%!
	public int getSum(int number) {
	
		int sum = 0;
	
		for (int i = 1; i <= number; i++) {
			sum = sum + i;
		}
		return sum;
	}
%>
	<h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
	<h1>평균 점수는 <%= avg %>입니다.</h1>
	<h1>채점 결과는 <%= score %>점 입니다.</h1>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
</body>
</html>