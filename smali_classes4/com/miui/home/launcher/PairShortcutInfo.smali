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

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 28
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->resetInfo()V

    .line 30
    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->fillIntentIfNeed()V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->setHideApplicationMessage(Z)V

    return-void
.end method

.method private fillIntentIfNeed()V
    .locals 3

    .line 47
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/PairUtils;->initAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resetInfo()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 37
    iput v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    const/4 v2, -0x1

    .line 38
    iput v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_0

    .line 40
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 41
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    .line 42
    iput v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 4

    .line 92
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutInfo;->canAcceptByHotSeats()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->container:J

    const-wide/16 v2, -0x67

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExtraPairPackageName()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconDrawable1()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconDrawable2()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPairBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->getPairIconContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/recents/util/PairUtils;->createPairBitmap(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable1()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;

    invoke-direct {v2, p0, p3}, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 113
    iget-object p3, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$ZMAmWwCBT0L6u30SCHwCHfjI7zk;

    invoke-direct {v1, p0, p4}, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$ZMAmWwCBT0L6u30SCHwCHfjI7zk;-><init>(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPairName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1103a7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    .line 75
    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo1:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public hasPairApp()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mShortcutInfo2:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPairIcon()Z
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getPairIconAsync$0$PairShortcutInfo(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 108
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable1:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getPairIconAsync$1$PairShortcutInfo(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 114
    iput-object p2, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mIconDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 98
    instance-of p2, p1, Lcom/miui/home/launcher/PairShortcutIcon;

    if-eqz p2, :cond_0

    .line 99
    check-cast p1, Lcom/miui/home/launcher/PairShortcutIcon;

    iput-object p1, p0, Lcom/miui/home/launcher/PairShortcutInfo;->mGroupShortcutIcon:Lcom/miui/home/launcher/PairShortcutIcon;

    :cond_0
    return-void
.end method
