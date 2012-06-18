class PagesController < ApplicationController
  def contato
    @email = ContactForm.new

    respond_to do |format|
      if @email.deliver
        format.html { redirect_to contato_pages_url, notice: 'Seu e-mail foi enviado com sucesso!' }
        #format.json { render json: @email, status: :created, location: @email }
      else
        format.html { render action: "contato" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  def quem_somos
  end
end
