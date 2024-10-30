class MultiplicationController > application_controller
  def multiplication
    render({ :template => "multiply_template/multiplication_form" })
  end

  def multiply
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result =  @first_number * @second_number

    render({ :template => "multiply_templates/multiply_result" })
  end
end
