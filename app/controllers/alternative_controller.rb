class AlternativeController < ApplicationController


  def main
    if Token.first.present?
      @link = Token.first.token
    else
      @link = "まだクリックされてないよ"
    end
  end



  def first
    @link_A = "ここにはリンクAが入るよ"
    @link_B = "ここにはリンクBが入るよ"

    if !Token.first.present?
      @token = Token.new(token: "first_link")
      @token.save
      set_link(@link_A)
    elsif Token.first.token == "first_link"
      set_link(@link_A)
    elsif Token.first.token == "second_link"
      set_link(@link_B)

    end

  end

  def second
    @link_A = "ここにはリンクAが入るよ"
    @link_B = "ここにはリンクBが入るよ"

    if !Token.first.present?
      @token = Token.new(token: "second_link")
      @token.save
      set_link(@link_B)
    elsif Token.first.token == "first_link"
      set_link(@link_A)

    elsif Token.first.token == "second_link"
      set_link(@link_B)
    end

  end


  private

  def set_link(link)
    @link = link
  end


end