---
---
$ ->
  $("#invitationForm").on "submit", (e) ->
    e.preventDefault()

    $("#invitationFormSuccess").hide()
    $("#invitationFormFail").hide()

    # grab the serialization of the form _before_ we disable the fields
    serialized = $("#invitationForm").serialize()
    $("#invitationForm").find("input").prop("disabled", "disabled")

    xhr = $.post("https://tech404-inviter.herokuapp.com/invitations", serialized)
    xhr.done ->
      $("#invitationFormSuccess").show()
    xhr.fail ->
      $("#invitationFormFail").show()
    xhr.always ->
      $("#invitationForm").find("input").prop("disabled", "")
