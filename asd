import discord

class VerificationView(discord.ui.View):
    def __init__(self, ctx: commands.Context):
        super().__init__(timeout=30)

    @discord.ui.button(label="Verify", style=discord.ButtonStyle.primary)
    async def verify_button(self, button: discord.ui.Button, interaction: discord.Interaction):
        # Handle verification logic here
        await interaction.response.send_message("You are verified!", ephemeral=True)
