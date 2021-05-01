.class public Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.super Lcom/miui/launcher/views/LauncherWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsScrollable:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    const-string v0, "layout_inflater"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    new-instance p1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 58
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 59
    new-instance p1, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 5

    .line 198
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 201
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 202
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public backupProperty()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->isTouchPointInView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetClick(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 85
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 149
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    const-string v0, "Launcher.Widget"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget load error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 98
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    .line 107
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 193
    invoke-super/range {p0 .. p5}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onLayout(ZIIII)V

    .line 194
    invoke-direct {p0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restoreProperty()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 74
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
