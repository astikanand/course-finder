Capybara.default_driver = :poltergeist
Capybara.default_max_wait_time = 100
Capybara.app_host = "http://course-finder-astikanand.herokuapp.com"

describe "CourseFinder App" do

  describe "visit root" do
  	before { visit '/' }

    it "displays 'Python' (default)" do
      expect(page).to have_content 'Python'
    end

    it "displays table element that has a row with 3 columns" do
      expect(page).to have_selector(:xpath, "//table//tr[count(td)=3]")
    end

    it "column 1 should have the thumbnail inside img tag" do
      expect(page).to have_selector(:xpath, "//table//tr/td[1]//img")
    end
  end

  it "displays 'Java for Android' when course=java" do
    visit "?course=java"
    expect(page).to have_content 'Java for Android'
  end

  it "displays 'Gastronomy to Health' when course=diet" do
    visit "?course=diet"
    expect(page).to have_content 'Gastronomy to Health'
  end

end
