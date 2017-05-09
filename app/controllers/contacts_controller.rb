class ContactsController < ApplicationController
#  def index
#  end
  
  def new
    if params[:back]
      @contents = Contact.new(contents_params)
    else
      @contents = Contact.new
    end
  end


  def create
    @contents = Contact.new(contents_params)
    if @contents.save
      #redirect_to new_contact_path,notice: "お問い合わせありがとうございました！"
      redirect_to root_path ,notice: "お問い合わせありがとうございました！"
    else
      # 入力フォームを再描画します。
      render 'new'
    end
  end

  def confirm
    @contents = Contact.new(contents_params)
    render :new if @contents.invalid?
  end  
  
  
  private
    def contents_params
      params.require(:contact).permit(:name, :email, :content)
    end

end
