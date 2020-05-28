import kivy
from kivy.lang import Builder
from kivymd.app import MDApp
from kivy.uix.screenmanager import ScreenManager
from kivy.factory import Factory

Builder.load_string("""
#:import utils kivy.utils

<LoginScreen@Screen>:
    name: "login"

    BackgroundLayer:

    MDCard:
        orientation: "vertical"
        size_hint:[0.5,0.7]
        pos_hint:{"center_x": 0.5, "center_y": 0.6}

        BoxLayout:
            orientation: "vertical"
            MDLabel:
                text: "[color=7D28BE]SORTIFIE[/color]"
                text_size: self.size
                font_size:40
                bold: True
                markup: True
                halign:"center"
                valign:"middle"
                  
            MDLabel:
                text: "[color=3B7A57]Sign In[/color]"
                text_size: self.size
                font_size:30
                bold: True
                markup: True
                halign:"center"
                valign:"middle"
        MDTextField:
            hint_text: "E-mail ID"
        MDTextField:
            hint_text: "Password"
            password: True

<BackgroundLayer@BoxLayout>:
    orientation: "vertical"
    BoxLayout:
        orientation: "vertical"
        canvas.before:
            Color:
                rgba: utils.get_color_from_hex("#E52B50")
            RoundedRectangle:
                pos:self.pos
                size:self.size
                radius: [0,0,50,50]
    BoxLayout:
        orientation: "horizontal"
        padding: [100,0,0,0]
        Widget:
            canvas.before:
                Color:
                    rgba: utils.get_color_from_hex("#5D8AA8")
                RoundedRectangle:
                    pos: self.pos
        Widget:
            canvas.before:
                Color:
                    rgba: utils.get_color_from_hex("#84DE02")
                RoundedRectangle:
                    pos: self.pos
        Widget:
            canvas.before:
                Color:
                    rgba: utils.get_color_from_hex("#B284BE")
                RoundedRectangle:
                    pos: self.pos

""")

class Sortifie(MDApp):
    def __init__(self, **kwargs):
        self.title="Loaf"
        self.theme_cls.theme_style="Light"
        self.theme_cls.primary_pallete="Pink"
        self.sm=ScreenManager()
        super().__init__(**kwargs)
        
    def build(self):
        self.sm.add_widget(Factory.LoginScreen())
        return self.sm
    
if __name__ == "__main__":
    Sortifie().run()

    

