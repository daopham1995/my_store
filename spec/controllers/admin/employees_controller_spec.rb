require 'rails_helper'

RSpec.describe Admin::EmployeesController, type: :controller do
  context 'GET #new' do
    it 'assign a employee to the view' do
      get :new
      expect(assigns(:employee)).to be_a_new(Employee)
    end
  end

  context 'POST #create' do
    before do
      @employee_count = Employee.count
    end

    it 'redirects to employee' do
      params = { employee: { name: 'test', email: 'example@example.com', password: '123456' } }
      post :create, params: params
      expect(Employee.count).to eq @employee_count.next
      expect(response).to redirect_to(admin_employee_path(Employee.last))
    end

    it 'raise an error if missing params emaill' do
      params = { employee: { name: 'test', password: '123456' } }
      post :create, params: params
      expect(response.status).to eq 422
      expect(Employee.count).to eq @employee_count
    end
  end
end
