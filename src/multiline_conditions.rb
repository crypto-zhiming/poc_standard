def custom_condition(*args)
  true
end

if custom_condition(true, false, true) && (
    custom_condition(true) || custom_condition(true)
  ) && custom_condition
end

if custom_condition(true, false, true) &&
    (
      custom_condition(true) || custom_condition(true)
    ) && custom_condition
end

if custom_condition(true,
  false,
  true)
end

if custom_condition(true,
  false,
  true)
end
