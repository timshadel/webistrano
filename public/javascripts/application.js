// open a new window
function loadWindow(url) {
  popupWin = window.open(url, 'new_window', 'scrollbars=no,status=no,toolbar=no,location=no,directories=no,menubar=no,width=960, height=700, top=50, left=50, resizable=1, scrollbars=yes');
  popupWin.focus();
}