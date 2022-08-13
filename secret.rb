require 'digest'

class Secret

  def initialize(key)
    @key = key
  end

  def day4a
    keys = []
    for x in 0..100000000 do
      validKey = "#{@key}#{x.to_s}"
      md5 = (Digest::MD5.hexdigest validKey).split('')
      if (md5[0] == "0" && md5[1] == "0" && md5[2] == "0" && md5[3] == "0" && md5[4] == "0")
        keys << x
      end
      if !keys.empty?
        return keys.first
      end
    end
  end

  def day4b
    keys = []
    for x in 0..100000000 do
      validKey = "#{@key}#{x.to_s}"
      md5 = (Digest::MD5.hexdigest validKey).split('')
      if (md5[0] == "0" && md5[1] == "0" && md5[2] == "0" && md5[3] == "0" && md5[4] == "0" && md5[5] == "0")
        keys << x
      end
      if !keys.empty?
        return keys.first
      end
    end
  end

end

