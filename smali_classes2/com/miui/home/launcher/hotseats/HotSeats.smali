.class public Lcom/miui/home/launcher/hotseats/HotSeats;
.super Landroid/widget/FrameLayout;
.source "HotSeats.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field protected mIsLoading:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

.field private mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return-void
.end method

.method private initContent()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0088

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0089

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContent()V

    return-void
.end method

.method private isNeedUpdateItemInfo()Z
    .locals 4

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    return v3

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getHotSeatsList$0(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 138
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getHotSeatsList$1(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private updateContent()V
    .locals 1

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V

    return-void
.end method

.method private updateContentItemInfo()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->removeAllViews()V

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHotSeatsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateItemInfos(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V

    return-void
.end method

.method private updateDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method

.method private updateHotSeatsLockAnim()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.HotSeats"

    const-string v1, "updateHotSeatsLockAnim , prepare hotseats view lock animation !"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    :cond_1
    return-void
.end method

.method private updateItemInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateItemInfos(Ljava/util/List;)V

    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 291
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 171
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->allowLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 177
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " HotSeats Items:\n"

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public finishLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHotSeatsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateItemInfos(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->finishLoading()V

    return-void
.end method

.method public getContent()Lcom/miui/home/launcher/hotseats/HotSeatsContent;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-object v0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHotSeatsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;

    .line 139
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 140
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 223
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserPresentAnimationChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 75
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return v0
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isSeatsFull()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 338
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 339
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 347
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->initContent()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 200
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 201
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 354
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateIconSize()V

    return-void
.end method

.method public onPresent()V
    .locals 4

    .line 362
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 363
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 365
    instance-of v3, v2, Lcom/miui/maml/FancyDrawable;

    if-eqz v3, :cond_0

    const-string v3, "present"

    .line 366
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenChanged()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isNeedUpdateItemInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContentItemInfo()V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updatePadding()V

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateHotSeatsLockAnim()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeAllItemIcons()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public saveSeats(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 299
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/miui/home/launcher/ItemInfo;

    .line 301
    iput v1, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-wide/16 v3, -0x65

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v2, v10

    move v8, v1

    .line 302
    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Launcher.HotSeats"

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSeats, info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 258
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 259
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 265
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setTranslationZ(F)V

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->startLoading()V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return-void
.end method
