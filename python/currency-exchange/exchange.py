def exchange_money(budget, exchange_rate):    
    return budget / exchange_rate


def get_change(budget, exchanging_value):
    return budget - exchanging_value


def get_value_of_bills(denomination, number_of_bills):

    return denomination * number_of_bills


def get_number_of_bills(budget, denomination):
    return int(budget) // denomination


def exchangeable_value(budget, exchange_rate, spread, denomination):
    exchange_rate += exchange_rate * spread * 0.01
    exchanged = exchange_money(budget, exchange_rate)
    return get_value_of_bills(denomination, get_number_of_bills(exchanged, denomination))


def non_exchangeable_value(budget, exchange_rate, spread, denomination):
    return exchangeable_value(budget, exchange_rate, spread, 1) -\
                exchangeable_value(budget, exchange_rate, spread, denomination)
