func dailyRateFrom(hourlyRate: Int) -> Double {
  return 8 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let rateWithoutDiscount: Double = 22 * dailyRateFrom(hourlyRate: hourlyRate)
  let rateWithDiscount: Double = rateWithoutDiscount * ((100 - discount) / 100)

  return rateWithDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate: Double = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount)
  let days = (budget / monthlyRate) * 22

  return days.rounded(.down) 
}
