.class public Lcom/miui/home/launcher/GroupShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "GroupShortcutInfo.java"


# instance fields
.field protected mIconDrawable1:Landroid/graphics/drawable/Drawable;

.field protected mIconDrawable2:Landroid/graphics/drawable/Drawable;

.field private mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

.field private mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 17
    iput-object p2, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    .line 18
    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/GroupShortcutInfo;->setHideApplicationMessage(Z)V

    return-void
.end method


# virtual methods
.method public getIconDrawable1()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDrawable2()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GroupShortcutInfo;->getIconDrawable1()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/GroupShortcutInfo$1;

    invoke-direct {v2, p0, p3}, Lcom/miui/home/launcher/GroupShortcutInfo$1;-><init>(Lcom/miui/home/launcher/GroupShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 52
    iget-object p3, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GroupShortcutInfo;->getIconDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/GroupShortcutInfo$2;

    invoke-direct {v1, p0, p4}, Lcom/miui/home/launcher/GroupShortcutInfo$2;-><init>(Lcom/miui/home/launcher/GroupShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public hasPairApp()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/GroupShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
