const pwdCheck= document.querySelectorAll("#pwd_check");
const qnaNum = document.querySelector("#qnaNum");
const modalCloseButton = document.getElementById('modalCloseButton');
const modal = document.getElementById('modalContainer');

 
for(var i=0; i<pwdCheck.length; i++){
	pwdCheck[i].addEventListener('click', (e) => {
		const qnaNumCheck = e.target.getAttribute("data-value");
		const qnaIdCheck = e.target.getAttribute("data-id");
		console.log(qnaNumCheck);
		console.log(qnaIdCheck);
		$('#qnaNum').val(qnaNumCheck);
		$('#idCheck').val(qnaIdCheck);
	  modal.classList.remove('hidden');
	});
};

modalCloseButton.addEventListener('click', () => {
  modal.classList.add('hidden');
});