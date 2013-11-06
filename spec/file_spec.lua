-- Modules

local file = require('file')

-- Helpers

-- Remove line endings for easier assertions
local function trim(str)
  return str:find('^%s*$') and '' or str:match('^%s*(.*%S)')
end

-- Tests

describe('file', function()
  teardown(function()
    os.remove('move.txt')
  end)

  describe('#.exists()', function()
    it('should return true if a file exists', function()
      local results = file.exists('spec/fixture/test.txt')
      assert.True(results)
    end)

    it('should return false if a file doesn\'t exist', function()
      local results = file.exists('spec/fixture/no-test.txt')
      assert.False(results)
    end)
  end)

  describe('#.read()', function()
    it('should return the content of the file', function()
      local results = file.read('spec/fixture/test.txt')
      assert.equals(trim(results), 'This is a test.')
    end)
  end)

  describe('#.write()', function()
    it('should write the content to the file', function()
      file.write('spec/fixture/write.txt', 'Hello!')
      local results = file.exists('spec/fixture/write.txt')
      local content = file.read('spec/fixture/write.txt')
      assert.True(results)
      assert.equals(trim(content), 'Hello!')
    end)
  end)

  describe('#.copy()', function()
    it('should copy the file', function()
      file.copy('spec/fixture/test.txt', 'spec/fixture/copy.txt')
      local results = file.exists('spec/fixture/copy.txt')
      local content = file.read('spec/fixture/copy.txt')
      assert.True(results)
      assert.equals(trim(content), 'This is a test.')
    end)
  end)

  describe('#.move()', function()
    it('should move and rename the file', function()
      file.move('spec/fixture/copy.txt', 'move.txt')
      local dest = file.exists('move.txt')
      local src  = file.exists('spec/fixture/copy.txt')
      assert.True(dest)
      assert.False(src)
    end)
  end)

  describe('#.remove()', function()
    it('should remove the file', function()
      file.remove('spec/fixture/write.txt')
      local results = file.exists('spec/fixture/write.txt')
      assert.False(results)
    end)
  end)
end)
