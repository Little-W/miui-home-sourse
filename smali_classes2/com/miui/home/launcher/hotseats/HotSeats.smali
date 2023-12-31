.class public Lcom/miui/home/launcher/hotseats/HotSeats;
.super Landroid/widget/FrameLayout;
.source "HotSeats.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field protected mIsLoading:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

.field private mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

.field private mUpdatingContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mUpdatingContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-void
.end method

.method private addDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method

.method private initContent()V
    .locals 3

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d008d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d008e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContent()V

    return-void
.end method

.method private isNeedUpdateItemInfo()Z
    .locals 4

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    return v3

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    if-ne v1, p0, :cond_1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private keepDataConsistent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->keepDataConsistent(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$getHotSeatsList$0(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 147
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

    .line 148
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private updateContent()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->isDropTargetsContainsContent(Lcom/miui/home/launcher/DropTarget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V

    :cond_1
    return-void
.end method

.method private updateContentItemInfo()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->removeAllViews()V

    .line 135
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContent()V

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHotSeatsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->keepDataConsistent(Ljava/util/List;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->requestLayout()V

    return-void
.end method

.method private updateHotSeatsLockAnim()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 306
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

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    :cond_1
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 314
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 313
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public checkContentAndClear()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mUpdatingContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-eq v0, v1, :cond_0

    .line 73
    invoke-interface {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeAllItemIcons()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mUpdatingContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->allowLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 186
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " HotSeats Items:\n"

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public finishLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHotSeatsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->keepDataConsistent(Ljava/util/List;)V

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->finishLoading()V

    return-void
.end method

.method public getContent()Lcom/miui/home/launcher/hotseats/HotSeatsContent;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-object p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHotSeatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object p0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 146
    sget-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$DIjWJPcBTbCSqDQZQxJizrFvojk;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;

    .line 148
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 149
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .line 233
    instance-of p1, p0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz p1, :cond_0

    .line 234
    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserPresentAnimationChildList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 86
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public isLoading()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return p0
.end method

.method public isSeatsFull()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isSeatsFull()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 361
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 368
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 369
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->initContent()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 209
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 210
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateIconSize()V

    return-void
.end method

.method public onPresent()V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mListContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setMamlIconPresent()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mScreenViewContent:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->onResume()V

    :cond_0
    return-void
.end method

.method public onScreenChanged()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isNeedUpdateItemInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContentItemInfo()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updatePadding()V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateHotSeatsLockAnim()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->requestLayout()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateContentItemInfo()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 215
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mUpdatingContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    .line 228
    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeAllItemIcons()V

    return-void
.end method

.method public removeItemIconWhenDrag(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 253
    instance-of v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v0, :cond_0

    .line 254
    check-cast p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeShortcuts(Ljava/util/ArrayList;)V

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

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 321
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 322
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/miui/home/launcher/ItemInfo;

    .line 323
    iput v1, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-wide/16 v3, -0x65

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v2, v10

    move v8, v1

    .line 324
    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSeats, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.HotSeats"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 329
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object p1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->addDropTarget(Lcom/miui/home/launcher/hotseats/HotSeatsContent;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 297
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleY: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "Launcher.HotSeats"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 279
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setTranslationZ(F)V

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->startLoading()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return-void
.end method
