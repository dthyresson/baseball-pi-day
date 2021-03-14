import Dot from 'src/components/Dot'

export const QUERY = gql`
  query PiTupletsQuery {
    piTuplets {
      id
      piSlice
      homeTeamScore
      awayTeamScore
    }
  }
`

export const Loading = () => <div>Loading...</div>

export const Empty = () => <div>Empty</div>

export const Failure = ({ error }) => <div>Error: {error.message}</div>

export const Success = ({ piTuplets }) => {
  return (
    <div className="grid grid-cols-4 md:grid-cols-5 lg:grid-cols-10 gap-1 justify-items-center ontent-center">
      {piTuplets.map((piTuplet) => {
        return <Dot key={piTuplet.id} piTuplet={piTuplet} />
      })}
    </div>
  )
}
