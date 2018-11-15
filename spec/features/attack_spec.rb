feature 'Attacking to the user 2' do
	scenario 'Sending a confirmation to the players attack' do
		sign_in_and_play
		click_link 'Attack'
		expect(page).to have_content 'Dave attacked Mittens'
	end 
end

feature '#Attacking' do
	scenario 'Reduce player 2 HP by 10' do
		sign_in_and_play
		click_link 'Attack'
		expect(page).to have_content 'Mittens: 50HP'
	end
end