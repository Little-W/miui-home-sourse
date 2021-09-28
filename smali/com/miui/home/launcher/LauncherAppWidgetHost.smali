.class public Lcom/miui/home/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic lambda$sendActionCancelled$0(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$LauncherAppWidgetHost$5VfgBH3VX5od3agHiCKVQTfamZs;-><init>(Lcom/miui/home/launcher/BaseActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 1

    .line 54
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v0, p2, p4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 p2, 0x1

    .line 57
    iput p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0069

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 60
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    if-eqz p3, :cond_0

    .line 62
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    iget-object p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    .line 68
    :goto_0
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-object p1
.end method

.method createPendingWidgetView(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 2

    .line 74
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 75
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0069

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 79
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherWidgetView;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 81
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p2

    iget-object v0, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/TitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-object p1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 49
    new-instance p2, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p2, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    return-object p2
.end method

.method public startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 89
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f10002e

    const/4 v0, 0x0

    .line 91
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V

    :goto_0
    return-void
.end method
