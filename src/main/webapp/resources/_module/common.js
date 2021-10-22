/**
 * 프로젝트 전반에 쓰일 함수(method)를 선언해두고 가져다 쓰자!
 */

/* get방식으로 던진 변수 받아오기 */
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    let regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
    let results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}