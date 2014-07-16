def translate_arrows
  $intersection_choice = $intersection_choice.downcase
  case
    when $intersection_choice.start_with?('l')
      $intersection_choice = 'l'
    when $intersection_choice.start_with?('r')
      $intersection_choice = 'r'
    when $intersection_choice.start_with?('u')
      $intersection_choice = 'u'
    when $intersection_choice.start_with?('d')
      $intersection_choice = 'd'
    else
      $intersection_choice = nil

  end
end