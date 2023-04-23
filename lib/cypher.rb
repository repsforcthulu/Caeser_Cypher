class Cyphers
    def caeser(string, num)
        lowcomp = ("a".."z").to_a
        upcomp = ("A".."Z").to_a
        raw = []
        string.split("").map do |elem|
            if lowcomp.include? elem #lowercase letters
                downy = lowcomp.index(elem)+num
                while downy > 25 do downy -= 26 end
                raw << lowcomp[downy]
            elsif upcomp.include? elem #uppercase letters
                uppy = upcomp.index(elem)+num
                while uppy > 25 do uppy -= 26 end
                raw << upcomp[uppy]
            else
                raw << elem #for punct
            end
        end
        return raw.join("")
    end
end

