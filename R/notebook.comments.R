rcloud.get.comments <- function(id) {

  if(id == "010b0b4451ff152e6c62") {
    return('[{"body":"do comments work in solr?","user":{"login":"rcloud","id":1,"type":"User"},"updated_at":"2017-03-08T15:33:30Z","created_at":"2017-03-08T15:33:30Z","id":1},{"body":"Do they<br>","user":{"login":"rcloud","id":1,"type":"User"},"updated_at":"2017-03-14T14:11:16Z","created_at":"2017-03-14T13:08:33Z","id":2},{"body":"can I add a comment","user":{"login":"rcloud","id":1,"type":"User"},"updated_at":"2017-03-14T14:09:58Z","created_at":"2017-03-14T14:09:58Z","id":3},{"body":"another update","user":{"login":"rcloud","id":1,"type":"User"},"updated_at":"2017-03-20T12:42:59Z","created_at":"2017-03-20T12:42:50Z","id":4}] ')
  } else {
    return('[]')
  }

}
