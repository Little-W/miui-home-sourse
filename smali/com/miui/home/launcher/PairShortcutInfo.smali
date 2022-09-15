.class public Lcom/miui/home/launcher/PairShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "PairShortcutInfo.java"


# instance fields
.field private mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

.field protected mIconDrawable1:Landroid/graphics/drawable/Drawable;

.field protected mIconDrawable2:Landroid/graphics/drawable/Drawable;

.field private final mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

.field private final mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 25
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    .line 26
    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->setHideApplicationMessage(Z)V

    return-void
.end method

.method public static synthetic lambda$getPairIconAsync$0(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 83
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getPairIconAsync$1(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 4

    .line 70
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutInfo;->canAcceptByHotSeats()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->container:J

    const-wide/16 v2, -0x67

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createPairBitmap(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    invoke-virtual {v2, v3, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 108
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getIconDrawable1()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDrawable2()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPairBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/PairShortcutIcon;->getPairIconContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/PairShortcutInfo;->createPairBitmap(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable1()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;

    invoke-direct {v2, p0, p3}, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 88
    iget-object p3, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$ZMAmWwCBT0L6u30SCHwCHfjI7zk;

    invoke-direct {v1, p0, p4}, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$ZMAmWwCBT0L6u30SCHwCHfjI7zk;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getPairName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11038e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 53
    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public hasPairApp()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 76
    instance-of p2, p1, Lcom/miui/home/launcher/PairShortcutIcon;

    if-eqz p2, :cond_0

    .line 77
    check-cast p1, Lcom/miui/home/launcher/PairShortcutIcon;

    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    :cond_0
    return-void
.end method
