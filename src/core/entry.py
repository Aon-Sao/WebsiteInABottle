class Entry:
    def __init__(self, name, date, location, content):
        self.name = name
        self.date = date
        self.location = location
        self.content = content
        self.summary = content[:60] + "..."

