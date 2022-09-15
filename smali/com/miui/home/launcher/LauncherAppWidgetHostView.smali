.class public Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.super Lcom/miui/launcher/views/LauncherWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private final mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsReInflate:Z

.field private mIsScrollable:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

.field private mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    const-string v0, "layout_inflater"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 89
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 90
    new-instance p2, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const-string p1, "Launcher.Widget"

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "widget corner = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 5

    .line 245
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 246
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 247
    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    move v0, v1

    .line 252
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 254
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private enforceRoundedCorners()V
    .locals 2

    .line 309
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setClipToOutline(Z)V

    return-void

    .line 316
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void

    .line 310
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void
.end method

.method private reInflate()V
    .locals 10

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Widget"

    const-string v1, "reInflate mRemoteViews is null!"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    :try_start_0
    const-string v0, "mLayoutId"

    .line 283
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.Widget"

    const-string v2, "reInflate"

    .line 285
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 291
    const-class v4, Landroid/view/View;

    const-string v6, "setTagInternal"

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v3

    new-array v9, v1, [Ljava/lang/Object;

    const v1, 0x1020018

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v3

    .line 291
    invoke-static/range {v4 .. v9}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "Launcher.Widget"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reInflate childCount("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") error"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    iput-boolean v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private resetRoundedCorners()V
    .locals 1

    .line 303
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public backupProperty()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public bindWidgetUpdateListener(Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 117
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

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetClick(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 184
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public getEnforcedCornerRadius()F
    .locals 1

    .line 330
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    const-string v0, "Launcher.Widget"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widget load error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0043

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

    .line 175
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->reInflate()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 133
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    .line 142
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 238
    invoke-super/range {p0 .. p5}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onLayout(ZIIII)V

    .line 239
    invoke-direct {p0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->reInflate()V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restoreProperty()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 109
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 223
    invoke-super {p0, p1, p1, p1, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setPadding(IIII)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 205
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 215
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    if-eqz v1, :cond_2

    .line 216
    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;->onWidgetUpdate(Landroid/widget/RemoteViews;)V

    .line 218
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    return-void
.end method
