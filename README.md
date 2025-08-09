# Train Ticket Data Normalizer

## Challenge Description

Imagine you are responsible for consuming data from different APIs provided by companies that sell train tickets.  
Each company uses different attribute names to represent the same information.

Your task is to build a project that can fetch data from these various APIs and normalize it into a single, unified data structure.

### Example

**Company A (Netherlands):**

```json
{
    "company": "Holanda Trens",
    "origin": "Amsterdam",
    "destination": "Londres",
    "price": 98.0
}
```
**Company B (Germany):**

```json
{
    "company": "Volkswagen dos Trens",
    "departure": "Munique",
    "arrival_station": "Porto",
    "price": 98.0
}
```
**Mixed API Response**

```json
[
    {
        "company": "Holanda Trens",
        "origin": "Amsterdam",
        "destination": "Londres",
        "price": 98.0
    },
    {
        "company": "Volkswagen dos Trens",
        "departure": "Munique",
        "arrival_station": "Porto",
        "price": 98.0
    }
]
```
