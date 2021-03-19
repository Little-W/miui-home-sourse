.class public Lcom/miui/home/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 40
    new-instance p2, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p2, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    return-object p2
.end method
