//
//  RulesView.swift
//  HBA
//
//  Created by Anurag Baral on 4/17/24.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        ScrollView {
            Text("""
                 | HBA S2 GAME RULES |

                 Game Structure and Duration:
                 a. The game consists of two halves, each lasting 20 minutes of actual playing time.
                 b. There will only be a stop clock during the second half’s last 1 minute only!!!!
                 c. Halftime duration is set at 2 minutes. d. If the score is tied at the end of regulation time, additional periods (overtime) are played until a winner is determined.
                 Teams and Players:
                 a. Teams may have a maximum of 8 players on their roster with the exception of Taran’s team.
                 b. Substitutions are permitted during dead-ball situations or timeouts.
                 Starting the Game:
                 a. The game begins with a jump ball at center court.
                 b. A jump ball determines which team gains possession of the ball first.
                 c. The team not gaining possession initially will start with the ball in the second half.
                 d. NBA & FIBA rules apply for inbound, ball advancement, dribble/gather, and foul/continuations.
                 e. 3 sec violation will only on offense. There will be no 3 sec violation for defense.
                 Scoring:
                 a. Field goals made from within the three-point arc are worth two points.
                 b. Field goals made from beyond the three-point arc are worth three points.
                 c. Free throws are worth one point each and are awarded for certain fouls.
                 Fouls and Penalties:
                 a. Personal fouls are assessed to players for illegal physical contact with opponents. b. Players who accumulate 5 personal fouls will be ejected from the game.
                 c. Team fouls are tallied throughout each half, with 1 bonus free throw awarded for after 7 fouls, and 2 bonus free throw awarded for after 10 fouls
                 d. Technical fouls may be assessed for unsportsmanlike conduct, resulting in free throws or possession for the opposing team.
                 Timeouts:
                 a. Each team is allotted 1 timeout per half for 1 minute. The timeouts will not be spot clock unless it's the last 1 minute of the second half.
                 b. Coaches or players may call timeouts during dead-ball situations.
                 Ending the Game:
                 a. The game concludes after the completion of two halves.
                 b. The team with the highest total points at the end of regulation time is declared the winner.
                 c. If the score is tied at the end of regulation, overtime periods are played until a winner is determined.
                 Code of Conduct:
                 a. Players, coaches, and spectators are expected to adhere to a code of conduct promoting sportsmanship, respect, and fair play.
                 b. Unsportsmanlike behavior may result in disciplinary action by the officials or governing body.
                 Official Interpretation:
                 a. In cases where the official rules do not address a specific situation, the HBA governing body's interpretation prevails.
                 b. Each player is expected to play a minimum of 4 games during the regular season to qualify to play in the playoffs.
                 c. In the event that a team does not have enough players to field a complete team. The team is allowed to select substitute players from the substitution list, however it is the captain's responsibility to communicate who the missing players are and who will be subbing for them 24 hours before the game start time. Substitute players must be chosen from the same tier or lower tier as the missing players. Teams cannot select substitute players from a higher tier than the missing players. The substitution process must adhere to the rules and regulations set forth by the governing body.
                 d. Any fighting or breaking the code of conduct will result in termination from the season.
                 """
            )
            .padding()
        }
        .navigationTitle("HBA Rules and Regulations")
    }
}

#Preview {
    RulesView()
}
