.class public Lcom/miui/home/launcher/SearchBarExtraLayout;
.super Landroid/widget/ViewAnimator;
.source "SearchBarExtraLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

.field private mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f01002e

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/SearchBarExtraLayout;->setInAnimation(Landroid/content/Context;I)V

    const p2, 0x7f010031

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/SearchBarExtraLayout;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public isXiaoaiShow()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->isXiaoaiShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onFinishInflate()V

    const v0, 0x7f0a01b6

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    const v0, 0x7f0a01b5

    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarTransferLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->onWallpaperColorChanged()V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mTransferLayout:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->onWallpaperColorChanged()V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarExtraLayout;->mXiaoaiLayout:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshStyle()V

    return-void
.end method
