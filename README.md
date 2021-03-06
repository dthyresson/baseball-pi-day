# Baseball PI Day

A project for Boston Baseball Hackday 2019.

## Inspiration

The inspiration for this hack was http://mkweb.bcgsc.ca/pi/piday/ poster for the 2013 Pi Day by Martin Krzywinski.

Can you construct 5000 digits of pi using baseball scores?

Since there are consecutive numbers in PI (as well as consecutive 0's) I couldn't use final game scores, so I instead used scores at the bottom or top of an inning.

## What it does

Single page app where you can see a visual inspired by Martin Krzywinski's poster and tap/hover to see the PI digits and some basic game info.

## How I built it

* Custom SQL based on Stattleship data to calculate game inning scores based on scoreboard data
* Custom SQL query to splits 5000 digits of PI into pairs and try to randomly match an inning score.
* Export results to CSV
* Ruby code to transform CSV to YAML to be using in the MIddleman static site
* Singe page w/ HTML, SCSS and JQuery to render the markup, the "pie" of pi and display info

## Challenges I ran into

* There's maybe some duplicate inning scores, but I didn't try to make the unique.

## Accomplishments that I'm proud of

The query to match PI pairs to score pairs.

## What I learned

* It really can be as American as baseball *and* apple PI

## What's next for American as ⚾and apple π

Better UX. Game details. Different sets of PIs.


# Rebuilt with RedwoodJS 2021

> **WARNING:** RedwoodJS software has not reached a stable version 1.0 and should not be considered suitable for production use. In the "make it work; make it right; make it fast" paradigm, Redwood is in the later stages of the "make it work" phase.

## Getting Started
- [Tutorial](https://redwoodjs.com/tutorial/welcome-to-redwood): getting started and complete overview guide.
- [Docs](https://redwoodjs.com/docs/introduction): using the Redwood Router, handling assets and files, list of command-line tools, and more.
- [Redwood Community](https://community.redwoodjs.com): get help, share tips and tricks, and collaborate on everything about RedwoodJS.

### Setup

We use Yarn as our package manager. To get the dependencies installed, just do this in the root directory:

```terminal
yarn install
```

### Fire it up

```terminal
yarn redwood dev
```

Your browser should open automatically to `http://localhost:8910` to see the web app. Lambda functions run on `http://localhost:8911` and are also proxied to `http://localhost:8910/.redwood/functions/*`.
