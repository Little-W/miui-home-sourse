.class public Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;
.super Ljava/lang/Object;
.source "AssistantInstallOverlay.java"


# instance fields
.field mClient:Lcom/miui/launcher/overlay/client/LauncherClient;


# direct methods
.method constructor <init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method


# virtual methods
.method public requestInstall(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 20
    instance-of v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_4

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 24
    check-cast p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const-string p3, "picker_id"

    .line 26
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_cell_x"

    .line 27
    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_cell_y"

    .line 28
    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_span_x"

    .line 29
    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanX:I

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_span_y"

    .line 30
    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanY:I

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_status"

    .line 31
    iget v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_download_uri"

    .line 33
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_app_name"

    .line 34
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_app_icon_preview_url"

    .line 35
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_package_version_name"

    .line 36
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    instance-of p3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 41
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string p3, "widget_type"

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_app_package"

    .line 43
    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_component_name"

    .line 44
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_1

    .line 47
    :cond_1
    instance-of p3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p3, :cond_3

    .line 48
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const-string p3, "widget_app_package"

    .line 49
    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string p3, ""

    :goto_0
    const-string v2, "widget_type"

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "maml_version"

    .line 52
    iget v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "widget_app_version"

    .line 53
    iget v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "maml_product_id"

    .line 54
    iget-object v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_editable"

    .line 55
    iget-boolean v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "maml_tag"

    .line 56
    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    const-string p3, "widget_title"

    .line 59
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "widget_app_is_show_warn_dialog"

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p2, "install_widget"

    invoke-virtual {p1, p2, v1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method
