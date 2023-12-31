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
    .locals 6

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

    .line 26
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v1, "picker_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    const-string v1, "widget_cell_x"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    const-string v1, "widget_cell_y"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    iget p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanX:I

    const-string v1, "widget_span_x"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->spanY:I

    const-string v1, "widget_span_y"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string v1, "widget_status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    const-string v1, "widget_download_uri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v1, "widget_app_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v1, "widget_app_icon_preview_url"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v1, "widget_package_version_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->extension:Ljava/lang/String;

    const-string v1, "component_item_info_expand"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    instance-of p3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string v1, ""

    const-string v2, "widget_app_package"

    const-string v3, "widget_type"

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 42
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v5, 0x1

    .line 43
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget-object v3, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    const-string v3, "widget_download_app_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "widget_component_name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 49
    :cond_0
    instance-of p3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p3, :cond_2

    .line 50
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 51
    iget-object v5, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x2

    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget v2, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v3, "maml_version"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    iget v2, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    const-string v3, "widget_app_version"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v2, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v3, "maml_product_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v2, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    const-string v3, "maml_editable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-object p3, p3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    const-string v2, "maml_tag"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_0
    const-string p3, "widget_title"

    .line 61
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "widget_app_is_show_warn_dialog"

    .line 62
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const-string p2, "add_source"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "install_widget"

    invoke-virtual {p0, p1, v4, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method
