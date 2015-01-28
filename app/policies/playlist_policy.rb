class PlaylistPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @policy = model
  end

  def index?
    # @current_user.admin?
  end

  def show?
    # @current_user.admin? or @current_user == @user
  end

   def new?
    @current_user != nil
  end


  def create?
    @current_user != nil
  end


  def update?
    @current_user.admin?
  end

  def destroy?
    @current_user.admin?
  end

end  