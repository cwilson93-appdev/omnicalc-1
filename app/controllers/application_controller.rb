class ApplicationController < ActionController::Base
  def blank_square_form

    render({:template => "calculation_templates/square_form.html.erb"})
  end

  def blank_square_root_form

    render({:template => "calculation_templates/square_root_form.html.erb"})
  end

  def blank_rand_form

    render({:template => "calculation_templates/rand_form.html.erb"})
  end

  def blank_payment_form

    render({:template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f
    @payment = @apr/12 * @principal
    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  def calculate_square
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({:template => "calculation_templates/square_results.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("elephant").to_f
    @square_root_of_num = @num ** (1/2.0)
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    
    render({:template => "calculation_templates/rand_results.html.erb"})
  end
end
