.class public Lcom/miui/home/launcher/hotseats/HotSeats;
.super Landroid/widget/FrameLayout;
.source "HotSeats.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

.field protected mIsLoading:Z

.field private final mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private updateHotSeatsLockAnim()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 92
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->allowLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 98
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

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public finishLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->finishLoading()V

    return-void
.end method

.method public getContent()Lcom/miui/home/launcher/hotseats/HotSeatsContent;
    .locals 1

    .line 135
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

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 144
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    return-object v0
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

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return v0
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isSeatsFull()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 268
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 269
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 277
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 121
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateIconSize()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 127
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeAllItemIcons()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 242
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

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->removeShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public saveSeats(Lcom/miui/home/launcher/hotseats/HotSeatsList;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p2

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 228
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 229
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/miui/home/launcher/ItemInfo;

    .line 230
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iput p1, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-wide/16 v2, -0x65

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v1, v9

    move v7, p1

    .line 232
    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Launcher.HotSeats"

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSeats, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object p2, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setListContent(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-void
.end method

.method public setScreenContent(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 173
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 179
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setTranslationZ(F)V

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->startLoading()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mIsLoading:Z

    return-void
.end method

.method public updateItemInfo()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {p0, v2, v3, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->onConfigChangeUpdateRecommend()V

    .line 204
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->updateHotSeatsLockAnim()V

    return-void
.end method

.method public updatePadding()V
    .locals 5

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 219
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setPadding(IIII)V

    return-void
.end method
