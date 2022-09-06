.class public Lcom/miui/home/launcher/AssistantWidgetCompatCN;
.super Ljava/lang/Object;
.source "AssistantWidgetCompatCN.java"

# interfaces
.implements Lcom/miui/home/launcher/AssistantWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAssistantVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPickerDetailActivity()Landroid/content/ComponentName;
    .locals 3

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.personalassistant"

    const-string v2, "com.miui.personalassistant.picker.business.detail.PickerDetailActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPickerHomeActivity()Landroid/content/ComponentName;
    .locals 3

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.personalassistant"

    const-string v2, "com.miui.personalassistant.picker.business.home.pages.PickerHomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.personalassistant"

    return-object v0
.end method

.method public isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.miui.personalassistant.preferences.key_cta_welcome"

    const/4 v1, 0x1

    .line 40
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSupportMIUIWidget(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
