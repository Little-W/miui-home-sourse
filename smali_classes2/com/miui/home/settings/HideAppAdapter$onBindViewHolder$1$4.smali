.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;
.super Ljava/lang/Object;
.source "HideAppAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4$1;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4$1;-><init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p1, p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    const-string v0, "click_ok_when_hide_or_uninstall_app"

    const-string v1, "management"

    .line 84
    invoke-static {p1, p2, p0, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$4;->invoke(Landroid/content/DialogInterface;I)V

    return-void
.end method
