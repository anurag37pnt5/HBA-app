//
//  ScheduleView.swift
//  HBA
//
//  Created by Anurag Baral on 3/24/24.
//

import SwiftUI

struct ScheduleView: View {
    let schedule = [
        "Week 1": [
            "Thursday, 4th April": [
                "8:35pm - 9:15pm: Flying Nimbus vs Dunking Hanumans",
                "9:20pm - 10:05pm: Holi Crossover vs GSB"
            ],
            "Friday, 5th April": [
                "7:00pm - 8:00pm: Warm-ups",
                "8:00pm - 9:00pm: Z Ballers vs KTM Kings",
                "9:00pm - 10:00pm: Snow Lions vs Tibet"
            ]
        ],
        "Week 2": [
            "Thursday, 11th April": [
                "8:35pm - 9:15pm: Dunking Hanumans vs Tibet",
                "9:20pm - 10:05pm: KTM Kings vs GSB"
            ],
            "Friday, 12th April": [
                "7:00pm - 8:00pm: Warm-ups",
                "8:00pm - 9:00pm: Z Ballers vs Ankit",
                "9:00pm - 10:00pm: Flying Nimbus vs Snow Lions"
            ]
        ],
        "Week 3": [
            "Thursday, 18th April": [
                "8:35pm - 9:15pm: Z Ballers vs GSB",
                "9:20pm - 10:05pm: Flying Nimbus vs Tibet"
            ],
            "Friday, 19th April": [
                "9:00pm - 10:15pm: DH vs Snow Lions"
            ]
        ],
        "Week 4": [
            "Thursday, 25th April": [
                "8:35pm - 9:15pm: Z Ballers vs Flying Nimbus",
                "9:20pm - 10:05pm: KTM Kings vs DH"
            ],
            "Friday, 26th April": [
                "8:00pm - 9:00pm: Ankit vs Snow Lions",
                "9:00pm - 10:15pm: GSB vs Tibet"
            ]
        ],
        "Week 5": [
            "Thursday, 2nd May": [
                "8:35pm - 9:15pm: Z Ballers vs DH",
                "9:20pm - 10:05pm: GSB vs Tibet"
            ],
            "Friday, 9th May": [
                "8:35pm - 9:15pm: Ankit vs Snow Lions",
                "9:20pm - 10:05pm: KTM Kings vs Flying Nimbus"
            ]
        ],
        "Week 6": [
            "Thursday, 16th May": [
                "8:35pm - 9:15pm: GSB vs DH",
                "9:20pm - 10:05pm: KTM Kings vs Tibet"
            ],
            "Friday, 17th May": [
                "7:00pm - 8:00pm: Warm-ups",
                "8:00pm - 9:00pm: Ankit vs Flying Nimbus",
                "9:00pm - 10:00pm: Z Ballers vs Snow Lions"
            ]
        ],
        "Week 7": [
            "Thursday, 23rd May": [
                "8:35pm - 9:15pm: Ankit vs DH",
                "9:20pm - 10:05pm: GSB vs Flying Nimbus"
            ],
            "Friday, 30th May": [
                "8:35pm - 9:15pm: Z Ballers vs Tibet",
                "9:20pm - 10:05pm: KTM Kings vs Snow Lions"
            ]
        ],
        "Week 8": [
            "Thursday, 6th June": [
                "8:35pm - 9:15pm: Quarter Finals",
                "9:20pm - 10:05pm: Quarter Finals"
            ],
            "Friday, 13th June": [
                "8:35pm - 9:15pm: Quarter Finals",
                "9:20pm - 10:05pm: Quarter Finals"
            ]
        ]
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                ForEach(schedule.keys.sorted(), id: \.self) { week in
                    DisclosureGroup(week) {
                        ForEach(schedule[week]!.keys.sorted(), id: \.self) { date in
                            Text(date)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                            ForEach(schedule[week]![date]!, id: \.self) { gameDetail in
                                let components = gameDetail.components(separatedBy: ": ")
                                if components.count > 1 {
                                    HStack {
                                        Text(components[0])
                                            .underline()
                                            .font(.system(size: 15))
                                        Text(": " + components[1])
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                } else {
                                    Text(gameDetail)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    .accentColor(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScheduleView()
}
