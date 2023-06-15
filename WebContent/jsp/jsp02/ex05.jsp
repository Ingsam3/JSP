<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%-- jsp스크립트 표현식을 활용해서 
   1부터 10까지의 자연수의 누적합을 for 사용 구현,
   11부터 20까지 누적합을 while 사용 구현, 
   21부터 30까지 누적 합을 do-while 사용 구현--%>   
   
 <% 
	int i;
	int sum = 0;
			
			
	for ( i = 1; i <= 10; i++) {
				
		sum += i;
	}
 	
 
%>
1부터 10까지의 누적합 : <%=sum %><hr>
<% 
 	i =11; 
	sum =0;
 	while(i<=20){
 		sum += i;
 		
 		i++;
 	}
 %>
 11부터 20까지의 누적합 : <%=sum %><hr>
<% 
 	i =21; 
	sum =0;
 	do{
 		sum += i;
 		i=i+1;
 	}while(i <=30);
 
 %>  
 21부터 30까지의 누적합 : <%=sum %><hr>