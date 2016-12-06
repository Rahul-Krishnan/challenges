/* jshint esversion: 6 */

const gameInfo = [
  {
    home_team: 'Patriots',
    away_team: 'Broncos',
    home_score: 7,
    away_score: 3
  },
  {
    home_team: 'Broncos',
    away_team: 'Colts',
    home_score: 3,
    away_score: 0
  },
  {
    home_team: 'Patriots',
    away_team: 'Colts',
    home_score: 11,
    away_score: 7
  },
  {
    home_team: 'Steelers',
    away_team: 'Patriots',
    home_score: 7,
    away_score: 21
  }
];

// YOUR CODE HERE
let teamNames = [];
gameInfo.forEach((result) => {
  if (!teamNames.includes(result.home_team)) {
    teamNames.push(result.home_team);
  }
  else {
  }
  if (!teamNames.includes(result.away_team)) {
    teamNames.push(result.away_team);
  }
  else {
  }
});

let teams = [];

teamNames.forEach((team) => {
  teams.push(new Team(team));
});

gameInfo.forEach((game) => {
  if (game.home_score > game.away_score) {
    teams.forEach((team) => {
      if (team.name == game.home_team) {
        team.wins +=1;
      }
      if (team.name == game.away_team) {
        team.losses +=1;
      }
    });
  }
  else {
    teams.forEach((team) => {
      if (team.name == game.away_team) {
        team.wins +=1;
      }
      if (team.name == game.home_team) {
        team.losses +=1;
      }
    });
  }
});

teams.sort(function(a, b) {
  return b.wins-a.wins;
});

console.log('Teams\n-----');
console.log('Names\t\t  Rank\tTotal Wins\tTotal Losses');
teams.forEach((team, index) => {
  if (team.name.length >7) {
    team.rank = index + 1;
    console.log(`${team.name}\t\t${team.rank}\t\t${team.wins}\t\t\t${team.losses}`);
  }
  else {
    team.rank = index + 1;
    console.log(`${team.name}\t\t\t${team.rank}\t\t${team.wins}\t\t\t${team.losses}`);
  }
});
