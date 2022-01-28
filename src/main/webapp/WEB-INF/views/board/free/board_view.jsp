<%@page import="com.pp.peterpet.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style type="text/css">
#ttD img {
	max-width: 100%;
	height: auto;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.7.1/jquery.contextMenu.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.7.1/jquery.contextMenu.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.7.1/jquery.ui.position.js"></script>
<script src="https://kit.fontawesome.com/328162a37e.js" crossorigin="anonymous"></script>
<script type="text/javascript">
$(function() {
    $.contextMenu({
        selector: '.board-writer-one',
        trigger: 'left',
        items: {
            "회원 정보": {
				name: "회원 정보", 
				icon: "fa-user",
				callback: function(itemKey, opt, e) {
					location.href="OtherUserInfoC?userNickname=${board.b_writer}"
	            }
        	},
       		"채팅 보내기": {
	   			 name: "채팅 보내기", 
	   			 icon: "fa-comments",
	   			 callback: function(itemKey, opt, e) {
	    				popup('${board.b_writer}');
	             }
      		},

        }
    });   
});

$(function() {
    $.contextMenu({
        selector: '.board-writer-noChat',
        trigger: 'left',
        items: {
            "회원 정보": {
    			name: "회원 정보", 
    			icon: "fa-user",
    			callback: function(itemKey, opt, e) {
    				location.href="OtherUserInfoC?userNickname=${board.b_writer}"
                }
       		},
       		"채팅 보내기": {
       			 name: "채팅 보내기", 
       			 icon: "fa-comments",
       			 disabled: true
      		},

        }
    });  
});


function popup(toNickname) {
	url='./Chat?toNickname='+toNickname;
	window.open(url, 'Chat', 'top=10, left=10, width=628, height=800, status=no, menubar=no, toolbar=no, resizable=no, location=no, resizable=no');
}
</script>
</head>
<body>
	<!-- 게시글 content  -->
	<div class="main-preview">
		<h3 class="recruit__header">자랑하기 게시판</h3>
		<div class="recruit-content">

			<div class="pull-right" style="margin: 10px">
				<button
					<c:choose>
						<c:when test="${requestScope.curPageNo != null}">
							onclick="location.href='BoardPageC?p=${curPageNo }&type=${board.b_type}'"
						</c:when>
						<c:otherwise>
							onclick="location.href='BoardListC?type=free'"
						</c:otherwise>
					</c:choose>>목록</button>
				<c:if test="${requestScope.userNickname eq board.b_writer}">
					<button
						onclick="location.href='BoardUpdateC?p=${curPageNo }&no=${board.b_no}&type=${board.b_type}'">수정</button>
					<button
						onclick="location.href='BoardDeleteC?no=${board.b_no}&type=${board.b_type}'">삭제</button>
				</c:if>
			</div>
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<tbody>
					<tr>
						<td style="width: 20%;">글제목</td>
						<td colspan="2">${board.b_title }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2">
							<!-- 작성자가 자신이거나 로그인 안한경우 -->
							<c:if test="${requestScope.userNickname eq board.b_writer || requestScope.userNickname == null}">
								<span class="board-writer-noChat btn btn-neutral">
									${board.b_writer } 
								</span>
							</c:if>
							
							<c:if test="${requestScope.userNickname ne board.b_writer && requestScope.userNickname != null}">
								<span class="board-writer-one btn btn-neutral">
									${board.b_writer }
								</span>
							</c:if>
						<!-- 
							왜 안됨?
							<c:choose>
								<c:when test="${requestScope.userNickname eq board.b_writer || requestScope.userNickname == null}">
									<span class="context-menu-noChat btn btn-neutral">
										${board.b_writer } 
									</span>
								</c:when>
								<c:otherwise>
									<span class="context-menu-one btn btn-neutral">
										${board.b_writer }
									</span>
								</c:otherwise>
							</c:choose>
						-->
						</td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><fmt:formatDate value="${board.b_date }"
								type="both" dateStyle="medium" timeStyle="short" /></td>
					</tr>
					<tr>
						<td id="ttD" colspan="3"
							style="min-height: 200px; text-align: left;">
							${board.b_content }</td>
					</tr>
				</tbody>
			</table>


			<!-- 댓글 부분 -->
			<div id="comment">
				<table border="1" bordercolor="lightgray" width="100%">
					<!-- 로그인 했을 경우만 댓글 작성가능 -->
					<c:if test="${sessionScope.userID !=null}">
						<tr bgcolor="#F5F5F5">
							<form action="CommentWriteC" method="post" id="writeCommentForm">
								<input type="hidden" name="boardnum" value="${board.b_no}">
								<input type="hidden" name="comment_id"
									value="${sessionScope.userID}"> <input type="hidden"
									name="commentnum" value="0">
								<!-- 본문 작성-->
								<td colspan="2">
									<div>
										<textarea name="comment" rows="4" cols="70"
											style="width: 100%;"></textarea>
									</div>
								</td>
								<!-- 댓글 등록 버튼 -->
								<td>
									<div id="btn" style="text-align: center;">
										<p>
											<button>댓글등록</button>
										</p>
									</div>
								</td>
							</form>
						</tr>
					</c:if>
					
					<!-- 댓글 목록 -->
					<c:if test="${requestScope.commentList != null}">
						<c:forEach var="comment" items="${commentList}">
							<script>
							$(function() {
							    $.contextMenu({
							        selector: '.comment-writer-one${comment.c_no}	',
							        trigger: 'left',
							        items: {
							            "회원 정보": {
											name: "회원 정보", 
											icon: "fa-user",
											callback: function(itemKey, opt, e) {
												location.href="OtherUserInfoC?userNickname=${comment.c_writer}"
								            }
							        	},
							       		"채팅 보내기": {
								   			 name: "채팅 보내기", 
								   			 icon: "fa-comments",
								   			 callback: function(itemKey, opt, e) {
								    				popup('${comment.c_writer}');
								             }
							      		},

							        }
							    });   
							});

							$(function() {
							    $.contextMenu({
							        selector: '.comment-writer-noChat${comment.c_no}',
							        trigger: 'left',
							        items: {
							            "회원 정보": {
							    			name: "회원 정보", 
							    			icon: "fa-user",
							    			callback: function(itemKey, opt, e) {
							    				location.href="OtherUserInfoC?userNickname=${comment.c_writer}"
							                }
							       		},
							       		"채팅 보내기": {
							       			 name: "채팅 보내기", 
							       			 icon: "fa-comments",
							       			 disabled: true
							      		},

							        }
							    });  
							});
							</script>
							<tr>
								<!-- 아이디, 작성날짜 -->
								<td nowrap="nowrap">
									<div class="test_text">
										<!-- 답글일 경우 -->
										<c:if test="${comment.level > 1}">
											<c:forEach var="i" begin="1" end="${comment.level}" step="1">
											&nbsp;&nbsp;&nbsp;&nbsp;
										</c:forEach>
											<img src="resources/images/reply_icon.gif">
										</c:if>
										
										<!-- 작성자가 자신이거나 로그인 안한경우 -->
										<c:choose>
										<c:when test="${comment.c_writer ne '삭제된 코멘트'}">
											<c:if test="${requestScope.userNickname eq comment.c_writer || requestScope.userNickname == null}">
												<span class="comment-writer-noChat${comment.c_no} btn btn-neutral">
													${comment.c_writer }&nbsp;&nbsp;
												</span>
											</c:if>
											
											<c:if test="${requestScope.userNickname ne comment.c_writer && requestScope.userNickname != null}">
												<span class="comment-writer-one${comment.c_no} btn btn-neutral">
													${comment.c_writer }&nbsp;&nbsp;
												</span>
											</c:if>
										</c:when>
										<c:otherwise>
											${comment.c_writer }&nbsp;&nbsp;
										</c:otherwise>
										</c:choose>
									</div>
								</td>
								<!-- 댓글 내용 -->
								<td width="70%">
									<div class="text_wrapper">${comment.c_comment}
										<!-- 댓글 상태가 -1이면 삭제된 댓글 -->
										<c:if test="${comment.c_ischange != -1}">
											<font size="2" color="lightgray" style="float: right;">
												<!-- 댓글 상태가 1이면 수정된 상태  --> <c:if
													test="${comment.c_ischange == 1}">
											수정됨)
											</c:if> <fmt:formatDate value="${comment.c_date}" type="both"
													dateStyle="medium" timeStyle="short" />
											</font>
										</c:if>
									</div>

								</td>
								<!-- 버튼 -->
								<td nowrap="nowrap">
									<div id="btn" style="text-align: center;">
										<!-- 로그인 한사람만 답글 등록 가능 -->
										<c:if test="${sessionScope.userID !=null}">
											<!-- 삭제된 댓글에는 답글이 불가능함 -->
											<c:if test="${comment.c_ischange != -1}">
												<a href="#" id="recommenthidden${comment.c_no}"
													onclick="return false;" class="button">[답글]</a>
											</c:if>
											<br>

											<!-- 댓글 작성자인가? -->
											<c:if test="${requestScope.userNickname eq comment.c_writer}">
												<a href="#" id="chagecommenthidden${comment.c_no}"
													onclick="return false;" class="button">[수정] </a>
												<br>
												<a
													href="CommentDeleteC?no=${comment.c_no}&boardnum=${board.b_no}">
													[삭제]</a>
											</c:if>
											<!-- 댓글작성자가 아니라면 -->
											<c:if test="${requestScope.userNickname ne comment.c_writer}">
												<br>
												<br>
											</c:if>

										</c:if>
										<c:if test="${sessionScope.userID == null}">
											<br>
											<br>
											<br>
										</c:if>
									</div>
								</td>
							</tr>

							<!-- 답글달기 기능 -->
							<script type="text/javascript">
								$(document).ready(function() {
									// 페이지 document 로딩 완료 후 스크립트 실행 
									$("#recommenthidden"+${comment.c_no}).click(function() {
										status = $("#recomment"+${comment.c_no}).css("display");
										if (status == "none") {
											$("#recomment"+${comment.c_no}).css("display", "");
										} else {
											$("#recomment"+${comment.c_no}).css("display", "none");
										}
									});
								});
							</script>
							<tr bgcolor="#F5F5F5" id="recomment${comment.c_no}" style="display: none;">
								<form action="CommentWriteC" method="post" id="writeCommentForm">
									<input type="hidden" name="boardnum" value="${board.b_no}">
									<input type="hidden" name="comment_id"
										value="${sessionScope.userID}"> <input type="hidden"
										name="commentnum" value="${comment.c_no}">
									<!-- 본문 작성-->
									<td>답글 달기</td>
									<td>
										<div>
											<textarea name="comment" rows="4" cols="70"
												style="width: 100%;"></textarea>
										</div>
									</td>
									<!-- 댓글 등록 버튼 -->
									<td width="20%">
										<div id="btn" style="text-align: center;">
											<p>
												<button>답글 등록</button>
											</p>
										</div>
									</td>
								</form>
							</tr>

							<!-- 댓글 수정 기능 -->
							<script type="text/javascript">
								$(document).ready(function() {
									// 페이지 document 로딩 완료 후 스크립트 실행 
									$("#chagecommenthidden"+${comment.c_no}).click(function() {
										status = $("#chagecomment"+${comment.c_no}).css("display");
										if (status == "none") {
											$("#chagecomment"+${comment.c_no}).css("display", "");
										} else {
											$("#chagecomment"+${comment.c_no}).css("display", "none");
										}
									});
								});
							</script>
							<tr bgcolor="#F5F5F5" id="chagecomment${comment.c_no}"
								style="display: none;">
								<form action="CommentUpdateC" method="post"
									id="writeCommentForm">
									<input type="hidden" name="boardnum" value="${board.b_no}">
									<input type="hidden" name="commentnum" value="${comment.c_no}">
									<!-- 본문 작성-->
									<td>댓글 수정</td>
									<td>
										<div>
											<textarea name="comment" rows="4" cols="70"
												style="width: 100%;">${comment.c_comment}</textarea>
										</div>
									</td>
									<!-- 댓글 등록 버튼 -->
									<td width="20%">
										<div id="btn" style="text-align: center;">
											<p>
												<button>수정하기</button>
											</p>
										</div>
									</td>
								</form>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>


</body>
</html>