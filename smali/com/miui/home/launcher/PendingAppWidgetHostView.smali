.class public Lcom/miui/home/launcher/PendingAppWidgetHostView;
.super Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDefaultView:Landroid/view/View;

.field private mIcon:Lcom/miui/home/launcher/PendingAppIcon;

.field private mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 20
    iput-object p3, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const p2, 0x7f0601ca

    .line 21
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PendingAppIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Lcom/miui/home/launcher/PendingAppIcon;

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10d0000

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Lcom/miui/home/launcher/PendingAppIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/PendingAppIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Lcom/miui/home/launcher/PendingAppIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/PendingAppIcon;->setProgress(I)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateProgress()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Lcom/miui/home/launcher/PendingAppIcon;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/PendingAppIcon;->animProgress(I)V

    :cond_0
    return-void
.end method
