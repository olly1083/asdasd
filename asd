@bot.command()
async def verify(ctx):
    # Find the role by name
    role = discord.utils.get(ctx.guild.roles, name=VERIFY_ROLE_NAME)
    if role is None:
        await ctx.send(f"Role '{VERIFY_ROLE_NAME}' not found.")
        return

    # Add the role to the user
    await ctx.author.add_roles(role)
    await ctx.send(f"The {role.mention} role has successfully been added to you. Congrats! :tada:")
