$(window).load ->
  $('#mycart .x-out').click (e) ->
    e.preventDefault()
    $this = $(this).closest('a')
    url = $this.data('targeturl')
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $this.closest('.cart-dest').hide()
