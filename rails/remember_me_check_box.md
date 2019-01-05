#### f.check_box 与对应的生成的 html

```html.erb
<%= f.label :remember_me, class: 'checkbox inline' do %>
  <%= f.check_box :remember_me %>
  <span>Remember me on this computer</span>
<% end %>
```


```html
<!-- 默认值为 0，勾选☑️后的值为 1 -->
<label class="checkbox inline" for="session_remember_me">
  <input name="session[remember_me]" type="hidden" value="0">
  <input type="checkbox" value="1" name="session[remember_me]" id="session_remember_me">
  <span>Remember me on this computer</span>
</label>

```

#### params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
```ruby
# app/controllers/session_controller.rb
# post login_url
def create
  @user = User.find_by(email: params[:session][:email].downcase)
  if @user && @user.authenticate(params[:session][:password]) # 这里的 authenticate 方法为 User 中的 has_secure_password 引入的，回将参数与 database 中的 password_digest 做对比
    log_in @user # 登录用户（设定 session[:user_id] = @user.id)
    params[:session][:remember_me] == '1' ? remember(@user) : forget(@user) # 这里的 remember 和 forget 为两个 helper methods, 回调用同名的 user 实例方法和修改 cookies 中的 user_id 和 remember_token 的值
    redirect_back_or @user # 强制未登录的用户登录后，将用户重定向回原来 get 的页面，若没有保存原来 get request.original_url，默认回重定向到 user 的详情页
  else
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
  end
end

```