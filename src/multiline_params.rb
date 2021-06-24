def multi_params(*args)
  yield if block_given?
  true
end

multi_params from: "from",
             to: "to",
             username: "username",
             nickname: "nickname",
             age: "age",
             only: %i[
               show
               create
             ]
            
tmp =
  multi_params(
    from: "from",
    to: "to",
    username: "username",
    nickname: "nickname",
    age: "age"
  ) { puts 'this is block' } &&
  multi_params(
    from: "from",
    to: "to",
    username: "username",
    nickname: "nickname",
    age: "age"
  )

puts tmp
