feature 'Attacking to the user 2' do
	scenario 'Sending a confirmation to the players attack' do
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'Dave attacked Mittens'
	end 
end

feature '#Attacking' do
	scenario 'Reduce player 2 HP by 10' do
		sign_in_and_play
		click_button 'Attack'	
		click_button 'OK'
		expect(page).not_to have_content 'Mittens: 60HP'
		expect(page).to have_content 'Mittens: 50HP'
	end

	scenario 'be attacked by Player 2' do
		sign_in_and_play
		click_button 'Attack'
		click_button 'OK'
		click_button 'Attack'
		expect(page).to have_content 'Mittens attacked Dave'
	end
end