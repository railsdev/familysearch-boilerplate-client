LoggedInUser = require 'models/logged_in_user'

describe 'LoggedInUser', ->
  beforeEach ->
    @fetchStub = sinon.stub(LoggedInUser.prototype, 'fetch')

  afterEach ->
    @fetchStub.restore()

  it 'should be logged in after successful read', ->
    expect(@fetchStub.called).to.be.false
    @user = new LoggedInUser()
    expect(@user.isLoggedIn).to.be.false
    @fetchStub.yieldTo('success')
    expect(@fetchStub.called).to.be.true
    expect(@user.isLoggedIn).to.be.true
    @user.dispose()

  it 'should be not logged in after unsuccessful read', ->
    @user = new LoggedInUser()
    @fetchStub.yieldTo('error')
    expect(@fetchStub.called).to.be.true
    expect(@user.isLoggedIn).to.be.false
    @user.dispose()
