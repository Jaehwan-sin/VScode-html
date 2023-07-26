let adultsCount = 1;
let childrenCount = 0;

function changeAdults(delta) {
  adultsCount = Math.max(1, adultsCount + delta);
  updateCounts();
}

function changeChildren(delta) {
  childrenCount = Math.max(0, childrenCount + delta);
  updateCounts();
}

function updateCounts() {
  document.getElementById('adults-count').textContent = adultsCount;
  document.getElementById('children-count').textContent = childrenCount;
}

function search() {
  const destination = document.getElementById('destination').value;
  const departureDate = document.getElementById('departure-date').value;
  const returnDate = document.getElementById('return-date').value;

  // 여기서 검색 기능을 구현합니다.
  // 서버와의 통신이 필요하다면 Ajax 또는 fetch API 등을 사용할 수 있습니다.
  // 결과를 화면에 표시하는 방법은 따로 구현해야 합니다.
  console.log("목적지:", destination);
  console.log("출발일자:", departureDate);
  console.log("도착일자:", returnDate);
  console.log("성인:", adultsCount);
  console.log("어린이:", childrenCount);
}
