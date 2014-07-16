def translate_arrows
  $intersection_choice = $intersection_choice.downcase
  case
    when $intersection_choice == 'left'
      $intersection_choice = 'l'
    when $intersection_choice == 'right'
      $intersection_choice = 'r'
    when $intersection_choice == 'up'
      $intersection_choice = 'u'
    when $intersection_choice == 'down'
      $intersection_choice = 'd'
    else
      $intersection_choice = nil
  end
end