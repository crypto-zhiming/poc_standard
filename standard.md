# POC of Ruby Standard

- https://github.com/testdouble/standard

## Usage

```bash
bundle exec standardrb

# the --fix option wil fix the code automatically
bundle exec standardrb --fix

# you can choose which files you want to fix
bundle exec standardrb "app/controllers/**/*.rb" --fix
```

## Rules

- 2 spaces
- double quotes for string
- hash syntax {hash: syntax}
- single-line block with {}, multiline block with do / end
- leading dot on multi-line method chain [reason](https://github.com/testdouble/standard/issues/75)
- space inside block, but not hash

## multiline params

![multiline_params](images/multiline_params.png)
![multiline_params_01](images/multiline_params_01.png)

## no space inside hash

![no_space_inside_hash](images/no_space_inside_hash.png)

## remove to_s

![remove_to_s](images/remove_to_s.png)

## remove self

![remove_self](images/remove_self.png)

![remove self in model](images/remove_self_in_model.png)

![remove self in model](images/remove_self_in_model_01.png)

![remove self](images/remove_self_01.png)

![remove self](images/remove_self_02.png)

## multiline conditions

![multiline_conditions](images/multiline_conditions.png)

![condition with method](images/condition_with_method.png)

![condition with method](images/condition_with_method_01.png)

[what to do when if conditions too long](https://github.com/rubocop/ruby-style-guide/issues/476)

always puts the condition on the same line. If the conditions is too long, there are two ways to resolve it.

1. if..then..end
2. use variable to save the value of conditions

## do end vs {}

I have a concern in it. Most time we use {} in one-line block, use do / end in multiline block.

![do_end](images/do_end.png)

## empty method

![empty_method](images/empty_method.png)

## no more space in model validation

![no more space in model validation](images/no_more_space_in_model_valid.png)

## ident in model scope

![ident in model scope](images/ident_of_model_scope.png)

## indent in model belongs_to

![ident in model belongs_to](images/indent_in_model_belongs_to.png)

## modify code in hash merge

![modify code](images/modify_code_00.png)

## self modify

![modify self](images/modify_self.png)

## Conclusion

- a lot of change about single-quotes to double-quotes
- a lot of change about no space inside hash
- changes about do...end or {}
- ident changes in multi-line conditions
- ident changes in multi-line method call
- remove to_s inside "#{}"
- remove self in some cases
