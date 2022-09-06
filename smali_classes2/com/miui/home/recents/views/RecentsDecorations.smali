.class public Lcom/miui/home/recents/views/RecentsDecorations;
.super Landroid/widget/FrameLayout;
.source "RecentsDecorations.java"


# instance fields
.field private mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/recents/views/RecentsDecorations;Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-virtual {p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->performIconClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0291

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/relay/RelayIconInRecents;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    .line 31
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsDecorations;->mRecentsRelayContainer:Lcom/miui/home/recents/relay/RelayIconInRecents;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsDecorations$B_MT6MhZnXNh513PXXPPDJoCtRM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsDecorations$B_MT6MhZnXNh513PXXPPDJoCtRM;-><init>(Lcom/miui/home/recents/views/RecentsDecorations;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0317

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 42
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
