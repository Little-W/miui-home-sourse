.class public Lcom/miui/home/launcher/PendingLoadWidgetHostView;
.super Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.source "PendingLoadWidgetHostView.java"


# instance fields
.field private mDefaultView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingLoadWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingLoadWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0031

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
