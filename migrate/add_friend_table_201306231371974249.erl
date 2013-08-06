-module(add_friend_table_201306231371974249).
-export([up/0, down/0]).

up() ->
  Query = "CREATE  TABLE `friends` (
  `id` BIGINT NOT NULL ,
  `user_id` BIGINT NOT NULL ,
  PRIMARY KEY (`id`) );
  ",
  model_exec:exec_n(Query),
  ok.

down() ->
  io:format("create down ~n"),
  ok.
