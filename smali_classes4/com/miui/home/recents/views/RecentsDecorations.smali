.class public Lcom/miui/home/recents/views/RecentsDecorations;
.super Landroid/widget/FrameLayout;
.source "RecentsDecorations.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;


# instance fields
.field private mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getRecentsDecorationsGravity(Z)I
    .locals 2

    .line 94
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictMinimized()Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    .line 95
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x30

    return p0

    .line 97
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/16 p0, 0x50

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :cond_2
    return v0
.end method


# virtual methods
.method public getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$RecentsDecorations(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->performIconClick()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 43
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 59
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 65
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a02a5

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/relay/RelayIconInRecents;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    .line 37
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-nez v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsDecorations$B_MT6MhZnXNh513PXXPPDJoCtRM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsDecorations$B_MT6MhZnXNh513PXXPPDJoCtRM;-><init>(Lcom/miui/home/recents/views/RecentsDecorations;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0325

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 48
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsDecorations;->updateRecentsDecorationsLayout(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public updateRecentsDecorationsLayout(Landroid/graphics/Rect;)V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsDecorations;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 76
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v1

    .line 79
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 80
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 81
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 82
    invoke-direct {p0, v2}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsDecorationsGravity(Z)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 84
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 85
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsDecorationsGravity(Z)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 88
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 89
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    return-void
.end method
