.class public Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;
.super Lcom/miui/home/launcher/DeepShortcutInfo;
.source "ElderlyManDeepShortcutInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/oldman/ElderlyManShortcut;


# instance fields
.field private mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    return-void
.end method


# virtual methods
.method public addToLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->isContactShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    goto :goto_0

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->addToLauncher(Lcom/miui/home/launcher/Launcher;)V

    :goto_0
    return-void
.end method

.method public canAcceptByHotSeats()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

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
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->isUseContactColorizedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getIconAsync(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DeepShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setIsElderlyManShortcut(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setIsElderlyManShortcut(Z)V

    return-void
.end method

.method public setUseContactColorizedPortrait(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setUseContactColorizedPortrait(Z)V

    return-void
.end method

.method public updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 3

    .line 64
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "is_default_head"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->isUseContactColorizedPortrait()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->setUseContactColorizedPortrait(Z)V

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManDeepShortcutInfo;->mElderManShortcutWrapper:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->releaseColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    return-void
.end method
