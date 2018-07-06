	var accountType;
	var manager = new AccountManager(100);
	manager.open(new Account("1111-2222", "임영묵", 1111, 10000));
	manager.open(new Account("4444-2222", "홍길동", 1111, 10000));
	manager.open(new Account("3333-2222", "슈퍼맨", 1111, 10000));
	manager.open(new Account("1515-1133", "배트맨", 1111, 10000));
	manager.open(new Account("6855-5151", "홍길동", 1111, 10000));
	manager.open(new MinusAccount("6855-5151", "홍길동", 1111, 5000, 100000));

	window.onload = function() {
		allPrint();
		document.myAccount.accountType.onchange = function() {
			selectAccountType(this);
		};
		document.getElementById("cheak").onclick = function() {
			var accountNum = document.forms[0].accountNumTf.value;
			getAccount(accountNum);
		}
		document.getElementById("remove").onclick = function() {
			var accountNum = document.forms[0].accountNumTf.value;
			removeAccount(accountNum);
		}
		document.getElementById("search").onclick = function() {
			var accountOwner = document.forms[0].accountOwnerTf.value;
			searchAccount(accountOwner);
		}
		document.getElementById("regist").onclick = function() {
			openAccount();
			return false;
		}
		document.getElementById("checkall").onclick = function() {
			clearList();
			allPrint();
		}

	}
 /* 	 // 계좌번호 유효성검사.
	function NumYou(accountNumTf){
		var accountNum = document.forms[0].accountOwnerTf.value;
		var reg = /[0-9]/gi;
		var result = accountNum.match(reg);
		if(result == /[a-z]/gi;){
			alert("문자는 넣을수가없습니다.")
		}else{	
		for(var i=0; i < result.length; i++) {
			return alert(result[i] +"는 가능한 계좌번호입니다.");
		}
	}
	// 예금주 유효성검사.
	function OwnerYou(accountOwnerTf) {
		var accountOwner = document.forms[0].accountNumTf.value;
		var reg = /[a-z]/gi;
		var result = accountOwner.match(reg);
		if(result == /[0-9]/gi;){
			alert("숫자는 넣을수가없습니다.")
		}else{	
		for(var i=0; i < result.length; i++) {
			return alert(result[i] +"는 가능한 이름입니다.");
		}
	}  */
 
	function selectAccountType(select) {
		accountType = select.options[select.selectedIndex].value;
		if (accountType != "마이너스계좌") {
			document.getElementById("borrowMoneyTf").setAttribute("disabled", "disabled");
		} else {
			document.getElementById("borrowMoneyTf").removeAttribute("disabled");
		}
	};
 
	

	// 계좌번호로 계좌 가져오기
	function getAccount(accountNumTf) {
		// 입력안했을 경우
		if (accountNumTf == null || accountNumTf.length == 0) {
			alert("계좌번호를 입력해주세요");
			return false;
		} else {
			var account;
			// 계좌번호가 있다면
			if (account = manager.get(accountNumTf)) {
				// 화면 청소
				clearList();
				printList(account);
				return true;
			} else {
				alert("존재하지않는 계좌입니다.");
				return false;
			}
		}
	};
	// 계좌번호로 계좌 삭제
	function removeAccount(accountNumTf) {
		if (accountNumTf == null || accountNumTf.length == 0) {
			alert("계좌번호를 입력해주세요.");
			return false;
		} else {
			if (manager.remove(accountNumTf)) {
				clearList();
				allPrint();
				return true;
			} else {
				alert("존재하지않는 계좌입니다.");
				return false;
			}
		}
	}

	// 예금주명으로 계좌 검색
	function searchAccount(accountOwnerTf) {
		if (accountOwnerTf == null || accountOwnerTf.length == 0) {
			alert("예금주명을 입력해주세요.");
			return false;
		} else {
			var accounts;
			if ((accounts = manager.search(accountOwnerTf)).length) {
				clearList();
				allPrint(accounts);
				return true;
			} else {
				alert("검색된 결과가 없습니다.");
				return false;
			}
		}
	}

	// 계좌 등록
	function openAccount() {
		var accountNum = document.forms[0].accountNumTf.value;
		var accountOwner = document.forms[0].accountOwnerTf.value;
		var passwd = document.forms[0].passwdTf.value;
		var restMoney = document.forms[0].restMoneyTf.value;

		if (accountType == "입출금계좌") {
			manager.open(new Account(accountNum, accountOwner, passwd,
					restMoney));
			clearList();
			allPrint();
		} else if (accountType == "마이너스계좌") {
			var borrowMoney = document.forms[0].restMoneyTf.value;
			manager.open(new MinusAccount(accountNum, accountOwner, passwd,
					restMoney - borrowMoney, borrowMoney));
			clearList();
			allPrint();
		} else {
			alert("계좌종류를 선택해주세요");
		}
	}

	// 모든 테이블 출력
	function allPrint(accounts) {
		var lists = accounts || manager.getAccounts();
		for ( var i in lists) {
			printList(lists[i]);
		}
	}
	// 화면에 출력
	function printList(account) {
		var table = document.getElementById("accounttable");
		var row = table.insertRow(-1);

		row.insertCell(0).innerHTML = (account.constructor == Account) ? "입출금계좌" : "마이너스계좌";
		row.insertCell(1).innerHTML = account.accountNum;
		row.insertCell(2).innerHTML = account.accountOwner;
		row.insertCell(3).innerHTML = account.restMoney;
		row.insertCell(4).innerHTML = (account.constructor == Account) ? "0" : account.borrowMoney;
	}
	// 화면 정리
	function clearList() {
		var table = document.getElementById("accounttable");
		for (var i = 1; i < table.rows.length; i++) {
			table.rows[i].innerHTML = null;
		}
	}