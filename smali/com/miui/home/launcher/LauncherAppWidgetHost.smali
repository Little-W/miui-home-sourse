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

    .line 47
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 48
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic lambda$sendActionCancelled$0(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;-><init>(Lcom/miui/home/launcher/BaseActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 2

    .line 66
    iput-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 67
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0, p2, p4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 70
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->clearFocus()V

    const/4 p4, 0x1

    .line 71
    iput p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p4, 0x7f0d0088

    const/4 v1, 0x0

    invoke-virtual {p1, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 74
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 76
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p4}, Lcom/miui/home/launcher/Launcher;->getWidgetTouchDetector()Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V

    if-eqz p3, :cond_0

    .line 77
    iget-boolean p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p4, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p4

    iget-object v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p4

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 83
    :goto_0
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    .line 84
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method createPendingWidgetView(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 2

    .line 91
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/PendingLoadWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 96
    :goto_0
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 97
    iget p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0088

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 100
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    if-eqz p3, :cond_1

    .line 102
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    iget-object v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 107
    :goto_1
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-object p1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 54
    new-instance p3, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p3, p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p2, :cond_0

    const p1, 0x7f0a019e

    .line 56
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiAutoScale:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    :cond_0
    return-object p3
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 128
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez p1, :cond_1

    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onProviderChanged()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 150
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

    .line 114
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f100031

    const/4 v0, 0x0

    .line 116
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V

    :goto_0
    return-void
.end method
