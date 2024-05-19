from time import sleep
from os.path import path

var Work_Duration: Int = 50 * 60
var Break_Duration: Int = 10 * 60


fn start_pomodoro_timer():
    var is_working = True

    while True:
        if is_working:
            display_message("Start working for 50 minutes")
            start_timer(Work_Duration)
        else:
            display_message("Take a break for 10 minutes")
            start_timer(Break_Duration)
        is_working = not is_working


fn update_display(seconds_remaining: Int):
    var minutes = seconds_remaining // 60
    var seconds = seconds_remaining % 60
    print("\rTimer 🍅⏳", minutes, ":", seconds, end="")
    

fn display_message(message: String):
    print("\n", message)


fn start_timer(duration: Int):
    var seconds_remaining = duration

    while seconds_remaining > 0:
        sleep(1)
        seconds_remaining -= 1
        update_display(seconds_remaining)
    display_message("Time's up!")

fn main():
    start_pomodoro_timer()


