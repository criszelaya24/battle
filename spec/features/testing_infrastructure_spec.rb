feature 'Testing infraestructure' do
	scenario 'can run app and check page content' do
		visit('/')
		expect(page).to have_content 'Testing infraestructure working'
	end
end