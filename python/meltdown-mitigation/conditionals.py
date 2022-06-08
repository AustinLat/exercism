"""Functions to prevent a nuclear meltdown."""


def is_criticality_balanced(temperature, neutrons_emitted):
    return temperature < 800 and neutrons_emitted > 500 and temperature * neutrons_emitted < 500000


def reactor_efficiency(voltage, current, theoretical_max_power):
    power = voltage * current / theoretical_max_power * 100
    if power >= 80:
        return "green"
    if power >= 60:
        return "orange"
    if power >= 30:
        return "red"
    return "black"

def fail_safe(temperature, neutrons_produced_per_second, threshold):
    percentage = temperature * neutrons_produced_per_second / threshold * 100
    if percentage >= 90 and percentage <= 110:
        return "NORMAL"
    if percentage < 90:
        return "LOW"
    return "DANGER"
