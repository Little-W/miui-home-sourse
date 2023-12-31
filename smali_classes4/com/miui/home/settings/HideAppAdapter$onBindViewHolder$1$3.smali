.class final Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;
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
.field final synthetic $buttonView:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->$buttonView:Landroid/widget/CompoundButton;

    const-string p2, "buttonView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p1, p1, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->this$0:Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "click_cancel_when_hide_or_uninstall_app"

    const-string v1, "management"

    .line 71
    invoke-static {p1, p2, p0, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$3;->invoke(Landroid/content/DialogInterface;I)V

    return-void
.end method
