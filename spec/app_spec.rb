require 'spec_helper'

shared_examples_for "response code" do
  it { should be_ok }
end

describe MyApp do

  def app
    @app ||= MyApp
  end

  context "when get '/'" do
    before do
      get '/'
    end
    subject { last_response }
    it_behaves_like "response code"
    its(:body) { should include("Hello World!") }
  end

  context "when get '/css/style.css'" do
    before do
      get '/css/style.css'
    end
    subject { last_response }
    it_behaves_like "response code"
  end

  describe "MongoDB access" do
    before do
      Game.destroy_all if Game.exists?
      Game.create(title: "GOD EATER BURST", platform: "PSP")
    end
    context "when get '/games/title'" do
      before { get 'games/title' }
      subject { last_response }
      its(:body) { should == "GOD EATER BURST" }
    end
    context "when get '/games/platform'" do
      before { get 'games/platform' }
      subject { last_response }
      its(:body) { should == "PSP" }
    end
  end
end
