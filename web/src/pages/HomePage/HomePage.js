import { Link, routes } from '@redwoodjs/router'
import AppLayout from 'src/layouts/AppLayout'
import PiTuplets from 'src/components/PiTupletsCell'

const HomePage = () => {
  return (
    <AppLayout>
      <div className="bg-gray-800 h-full min-h-screen">
        <PiTuplets />
      </div>
    </AppLayout>
  )
}

export default HomePage
