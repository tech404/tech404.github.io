---
---
$ ->
  $("#invitationForm").on "submit", (e) ->
    e.preventDefault()

    xhr = $.post("https://tech404-inviter.herokuapp.com/invitations", $(this).serialize())
    xhr.done ->
      $("#invitationFormSuccess").show()
    xhr.fail ->
      $("#invitationFormFail").show()
