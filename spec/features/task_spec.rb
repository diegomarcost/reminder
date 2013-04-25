require 'spec_helper'

describe "Task" do
  it "creates task" do
  	task = FactoryGirl.create(:task)
  	visit new_task_path
  end
  it "emails user whith upcoming reminder"
end
