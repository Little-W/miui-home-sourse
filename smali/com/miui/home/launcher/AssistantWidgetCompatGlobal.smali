.class public Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;
.super Ljava/lang/Object;
.source "AssistantWidgetCompatGlobal.java"

# interfaces
.implements Lcom/miui/home/launcher/AssistantWidget;


# instance fields
.field private isSupportMIUIWidget:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAssistantVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.mi.globalminusscreen"

    .line 80
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AssistantWidget.Global"

    const-string v0, "checkAssistantVersion : app vault version may changed"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget:Ljava/lang/Boolean;

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget:Ljava/lang/Boolean;

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->resetMIUIWidgetSupport()V

    :cond_0
    return-void
.end method

.method public getPickerDetailActivity()Landroid/content/ComponentName;
    .locals 3

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mi.globalminusscreen"

    const-string v2, "com.mi.globalminusscreen.picker.business.detail.PickerDetailActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPickerHomeActivity()Landroid/content/ComponentName;
    .locals 3

    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mi.globalminusscreen"

    const-string v2, "com.mi.globalminusscreen.picker.business.home.pages.PickerHomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.mi.globalminusscreen"

    return-object v0
.end method

.method public isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSupportMIUIWidget(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.mi.globalminusscreen"

    const/16 v3, 0x80

    .line 65
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 67
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "miuiwidget.global.compat.version"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "AssistantWidget.Global"

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsSupportMIUIWidget version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt p1, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    .line 69
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v0

    .line 75
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;->isSupportMIUIWidget:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method
