.class Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;
.super Ljava/lang/Object;
.source "CloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudSettingsControllerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    return-object v0
.end method
