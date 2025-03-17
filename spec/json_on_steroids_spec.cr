module JsonOnSteriodsSpec
  describe JSON::OnSteroids do
    describe "#to_json" do
      it "should support returning a String" do
        (JSON::OnSteroids.new a: 1, b: 2).to_json.should eq %<{"a":1,"b":2}>
      end

      it "should support writing to IO" do
        output = String.build do |str|
          (JSON::OnSteroids.new a: 1, b: 2).to_json(str)
        end
        output.should eq %<{"a":1,"b":2}>
      end
    end
  end
end
