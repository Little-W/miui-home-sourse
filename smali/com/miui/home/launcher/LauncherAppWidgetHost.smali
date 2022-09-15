.class public Lcom/miui/home/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherWidgetView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 49
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic lambda$sendActionCancelled$0(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;-><init>(Lcom/miui/home/launcher/BaseActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 3

    .line 67
    iput-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 68
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, p2, p4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 71
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->clearFocus()V

    const/4 p4, 0x1

    .line 72
    iput p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const v1, 0x7f0d0099

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 75
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetTouchDetector()Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V

    if-eqz p3, :cond_0

    .line 78
    iget-boolean v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    iget-object v1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 84
    :goto_0
    iput-object p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    .line 85
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->updateMIUILargeScreenDeviceOptions(Landroid/content/Context;I)V

    return-object p4
.end method

.method createPendingWidgetView(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 2

    .line 93
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/PendingLoadWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 98
    :goto_0
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0099

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 102
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    if-eqz p3, :cond_1

    .line 104
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    iget-object v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 109
    :goto_1
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-object p1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 55
    new-instance p3, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p3, p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p2, :cond_0

    const p1, 0x7f0a021e

    .line 57
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiAutoScale:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    :cond_0
    return-object p3
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 130
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez p1, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onProviderChanged()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherWidgetView;->onScreenSizeChanged()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 116
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f110031

    const/4 v0, 0x0

    .line 118
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V

    :goto_0
    return-void
.end method
