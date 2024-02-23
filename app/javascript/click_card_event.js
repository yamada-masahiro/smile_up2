document.querySelectorAll('.card').forEach(function(card) {
  // card.idが'reporter_数字'の形式にマッチする場合のみ、処理を続ける
  const matchResult = card.id.match(/^reporter_(\d+)$/);
  if (matchResult) {
    const id = matchResult[1];
    // .card がクリックされたときの処理
    card.addEventListener('click', function() {
      window.location.href = `/reporters/${id}/edit`;
    });

    // .card 内の .inner-link がクリックされたときの処理
    card.querySelectorAll('.inner-link').forEach(function(link) {
      link.addEventListener('click', function(event) {
        event.stopPropagation(); // イベントの伝播を停止
      });
    });
  }
});
