<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<form name="loandata">
  <table>
    <tr><td colspan="3"><b>대출 금액 및 이자율 입력</b></td></tr>
    <tr>
      <td>1)</td>
      <td>대출 금액입력</td>
      <td><input type="text" name="principal" size="12" onchange="calculate();"> 원</td>
    </tr>
    <tr>
      <td>2)</td>
      <td>이자율(%)</td>
      <td><input type="text" name="interest" size="12" onchange="calculate();"> %</td>
    </tr>
    <tr>
      <td>3)</td>
      <td>대출기간(년)</td>
      <td><input type="text" name="years" size="12" onchange="calculate();"> 년</td>
    </tr>
    <tr><td colspan="3">
      <input type="button" value="계산" onclick="calculate();"><input type="button" value="다시입력" onclick="reset();">
    </td></tr>
    <tr><td colspan="3">
      <b>상환내역:</b>
    </td></tr>
    <tr>
      <td>4)</td>
      <td>월불입금</td>
      <td><input type="text" name="payment" size="12"> 원</td>
    </tr>
    <tr>
      <td>5)</td>
      <td>원금 및 이자합계</td>
      <td><input type="text" name="total" size="12"> 원</td>
    </tr>
    <tr>
      <td>6)</td>
      <td>이자금액</td>
      <td><input type="text" name="totalinterest" size="12"> 원</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function calculate() {
    // Get the user's input from the form. Assume it is all valid.
    // Convert interest from a percentage to a decimal, and convert from
    // an annual rate to a monthly rate. Convert payment period in years
    // to the number of monthly payments.
    var principal = document.loandata.principal.value;
    var interest = document.loandata.interest.value / 100 / 12;
    var payments = document.loandata.years.value * 12;
    // Now compute the monthly payment figure, using esoteric math.
    var x = Math.pow(1 + interest, payments);
    var monthly = (principal*x*interest)/(x-1);
    // Check that the result is a finite number. If so, display the results
    if (!isNaN(monthly) && 
        (monthly != Number.POSITIVE_INFINITY) &&
        (monthly != Number.NEGATIVE_INFINITY)) {
        document.loandata.payment.value = round(monthly);
        document.loandata.total.value = round(monthly * payments);
        document.loandata.totalinterest.value = 
            round((monthly * payments) - principal);
    }
    // Otherwise, the user's input was probably invalid, so don't
    // display anything.
    else {
        document.loandata.payment.value = "";
        document.loandata.total.value = "";
        document.loandata.totalinterest.value = "";
    }
}
// This simple method rounds a number to two decimal places.
function round(x) {
  return Math.round(x*100)/100;
}
</script>
</body>
</html>