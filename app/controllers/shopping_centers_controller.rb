class ShoppingCentersController < ApplicationController
  #def index
    #@shopping_centers=ShoppingCenter.all

  def show
    @shopping_center=ShoppingCenter.find(params[:id])
   
    #ここから閲覧履歴を保存するコード
    new_history = @shopping_center.histories.new
    new_history.user_id = current_user.id

    #if文追加、ログイン中のユーザー(current_user)の閲覧履歴(browsing_histories)の中で記事ID(article_id)が
    #URLに入力されているID(params[:id])と同じものがすでに存在しているか？(exists?)
    if current_user.histories.exists?(shopping_center_id: "#{params[:id]}")
      old_history = current_user.histories.find_by(shopping_center_id: "#{params[:id]}")
      old_history.destroy
    end

    new_history.save

  end
  
  
  def shopping_center_history #閲覧履歴
    @history = History.all
  end
  
  
  def search
    @shopping_center=ShoppingCenter.search_by_keywords(search_keywords)
  end

  private
  
  def search_keywords
    [params[:name1], params[:name2], params[:name3]].reject(&:blank?)
    
  end
  
  def browsing_history(user)
    if logged_in?
      new_history = histories.new
      new_history.user_id = user.id
      # 同じ投稿をcurrent_userが閲覧している場合、古い履歴を削除
      if user.histories.exists?(shopping_center_id: id)
        visited_history = user.histories.find_by(shopping_center_id: id)
        visited_history.destroy
      end
      new_history.save
    end
  end
  
 
end
