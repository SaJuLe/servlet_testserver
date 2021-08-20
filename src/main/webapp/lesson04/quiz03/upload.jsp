<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="contents">
	<div class="text">물건 올리기</div>
	<div class="pt-3">
		<form name="frm" id="frm" method="post">
			<div class="d-flex w-100 justify-content-between">
				<select class="form-control col-3" name="nickname" id="nickname">
					<option value="choose">-아이디 선택-</option>
					<option value="1">마로비</option>
					<option value="2">아메리카노</option>
					<option value="3">최준</option>
					<option value="4">빠다</option>
					<option value="5">하구루</option>
				</select>

				<div class="col-7 d-flex justify-content-center">
					<input type="text" name="title" id="title"
						class="form-control w-75" value="제목">
				</div>

				<input type="text" class="form-control" name="price" id="price"
					value="가격">
				<div class="input-group-append">
					<span class="input-group-text" id="price">원</span>
				</div>

			</div>
			<div class="pt-3">
				<textarea rows="6" cols="100" class="form-control"
					name="description" id="description"></textarea>
			</div>

			<div class="input-group-prepend pt-3">
				<span class="input-group-text">이미지 url</span> <input type="text"
					class="form-control" name="url" id="url">
			</div>

			<div class="pt-3">
				<button type="submit" id="submit"
					class="form-control input-group-text d-flex justify-content-center">저장</button>
			</div>
		</form>
	</div>
</div>