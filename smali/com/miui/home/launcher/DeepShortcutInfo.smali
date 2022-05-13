.class public Lcom/miui/home/launcher/DeepShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "DeepShortcutInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const/16 v0, 0xe

    .line 15
    iput v0, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public addToLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 9

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p0

    .line 37
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    return-void
.end method

.method public canAcceptByHotSeats()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeepShortcutKey()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeUniquelyShortcutKey()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 30
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->getShortcutBitmap(Landroid/content/Context;Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method
