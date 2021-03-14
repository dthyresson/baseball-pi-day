import { Link, routes } from '@redwoodjs/router'
import PiTuplets from 'src/components/PiTupletsCell'

const HomePage = () => {
  return (
    <div className="bg-gray-800 h-full min-h-screen">
      <PiTuplets />
    </div>
  )
}

export default HomePage
