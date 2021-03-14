import { render } from '@redwoodjs/testing'

import Dot from './Dot'

describe('Dot', () => {
  it('renders successfully', () => {
    expect(() => {
      render(<Dot />)
    }).not.toThrow()
  })
})
