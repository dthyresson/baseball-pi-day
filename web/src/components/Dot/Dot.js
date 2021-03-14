const colorizeFilling = ({ score }) => {
  switch (score) {
    case 0:
      return 'bg-red-500'
    case 1:
      return 'bg-green-500'
    case 2:
      return 'bg-blue-500'
    case 3:
      return 'bg-yellow-500'
    case 4:
      return 'bg-pink-500'
    case 5:
      return 'bg-purple-500'
    case 6:
      return 'bg-orange-500'
    case 7:
      return 'bg-lime-500'
    case 8:
      return 'bg-fuchsia-500'
    case 9:
      return 'bg-teal-500'
    default:
      return 'bg-red-500'
  }
}

const colorizeCrust = ({ score }) => {
  switch (score) {
    case 0:
      return 'border-red-500'
    case 1:
      return 'border-green-500'
    case 2:
      return 'border-blue-500'
    case 3:
      return 'border-yellow-500'
    case 4:
      return 'border-pink-500'
    case 5:
      return 'border-purple-500'
    case 6:
      return 'border-orange-500'
    case 7:
      return 'border-lime-500'
    case 8:
      return 'border-fuchsia-500'
    case 9:
      return 'border-teal-500'
    default:
      return 'border-red-500'
  }
}

const Dot = ({ piTuplet }) => {
  const fillingColor = colorizeFilling({ score: piTuplet.homeTeamScore })
  const crustColor = colorizeCrust({ score: piTuplet.awayTeamScore })

  console.log(fillingColor)

  return (
    <p
      className={`flex justify-center place-items-center h-16 w-16 my-4 border-10 border-solid rounded-full text-gray-50 ${fillingColor} ${crustColor}`}
    >
      {piTuplet.piSlice}
    </p>
  )
}

export default Dot
