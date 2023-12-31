.class public Lcom/miui/home/launcher/AssistantWidgetCompatCN;
.super Ljava/lang/Object;
.source "AssistantWidgetCompatCN.java"

# interfaces
.implements Lcom/miui/home/launcher/AssistantWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAssistantVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPickerDetailActivity()Landroid/content/ComponentName;
    .locals 2

    .line 29
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.miui.personalassistant"

    const-string v1, "com.miui.personalassistant.picker.business.detail.PickerDetailActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPickerHomeActivity()Landroid/content/ComponentName;
    .locals 2

    .line 35
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.miui.personalassistant"

    const-string v1, "com.miui.personalassistant.picker.business.home.pages.PickerHomeActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.miui.personalassistant"

    return-object p0
.end method

.method public getPriorityStrategy(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "com.miui.personalassistant.preferences.key_cta_welcome"

    .line 41
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupportMIUIWidget(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
