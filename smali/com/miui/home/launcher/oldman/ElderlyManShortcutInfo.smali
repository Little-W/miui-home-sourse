.class public Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "ElderlyManShortcutInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/oldman/ElderlyManShortcut;


# instance fields
.field private mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->canAcceptByHotSeats()Z

    move-result v0

    return v0
.end method

.method public getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/IconCache;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->isUseContactColorizedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getIconAsync(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public makeUniquelyShortcutKey()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "is_elderly_man_shortcut"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "is_default_head"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "contact_default_portrait_num"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->makeUniquelyShortcutKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setIsElderlyManShortcut(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setIsElderlyManShortcut(Z)V

    return-void
.end method

.method public setUseContactColorizedPortrait(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setUseContactColorizedPortrait(Z)V

    return-void
.end method
