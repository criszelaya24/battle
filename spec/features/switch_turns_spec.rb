# describe 'Switch turn' do
# 	context 'seeing the current turn' do
# 		scenario 'At the start of the game' do
# 			sign_in_and_play
# 			expect(page).to have_content "Dave's turn"
# 		end

# 		scenario 'After playing attack' do
# 			sign_in_and_play
# 			click_link 'Attack'
# 			click_button 'OK'
# 			expect(page).not_to have_content "Dave's turn"
# 			expect(page).to have_content "Mittens's turn"
# 		end
# 	end
# end