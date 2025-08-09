requests = [
    {
        company: "Holanda Trens",
        origin: "Amsterdam",
        destination: "Londres",
        price: 98.0
    },
    {
        company: "Volkswagen dos Trens",
        departure: "Munique",
        arrival_station: "Porto",
        amount: 98.0
    }
]

class ItemFactory
    def self.ingest(requests)
        requests.map do |req|
        build(data: req)
        end
    end

    def self.build(data:)
        case data[:company]
        when "Holanda Trens"
        HolandaTrensAdapter.new(data)
        when "Volkswagen dos Trens"
        VWdosTrens.new(data)
        when "Trem da Alegria"
        TremDaAlegria.new(data)
        else
        raise "Unknown API source: #{source}"
        end
    end
   

    class TremDaAlegria
        def initialize(data)
            @data = data
        end

         def company
            @data[:company]
        end

        def from
            @data[:departure]
        end

        def to
            @data[:arrival_station]
        end

        def price
            @data[:price]
        end
    end

    class HolandaTrensAdapter
        def initialize(data)
            @data = data
        end
        
         def company
            @data[:company]
        end

        def from
            @data[:origin]
        end

        def to
            @data[:destination]
        end

        def price
            @data[:price]
        end
    end

    class VWdosTrens
        def initialize(data)
            @data = data
        end

         def company
            @data[:company]
        end

        def from
            @data[:departure]
        end

        def to
            @data[:arrival_station]
        end

        def price
            @data[:amount]
        end
    end
end

items = ItemFactory.ingest(requests)

normalized_array = items.map do |item|
  {
    company: item.company,
    from: item.from,
    to: item.to,
    price: item.price
  }
end

puts normalized_array.inspect