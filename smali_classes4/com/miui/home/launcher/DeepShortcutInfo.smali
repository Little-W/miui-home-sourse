.class public Lcom/miui/home/launcher/DeepShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "DeepShortcutInfo.java"


# instance fields
.field private mOriginalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const/16 v0, 0xe

    .line 20
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

    .line 65
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    return-void
.end method

.method public canAcceptByHotSeats()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeepShortcutKey()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 52
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->getShortcutBitmap(Landroid/content/Context;Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    :goto_0
    invoke-virtual {p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 57
    iget p2, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 p2, p2, -0x11

    iput p2, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->runtimeStatusFlags:I

    goto :goto_1

    .line 59
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->runtimeStatusFlags:I

    :goto_1
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method public writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/DeepShortcutInfo;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    return-void
.end method
