.class public abstract Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.super Ljava/lang/Object;
.source "CloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;,
        Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;
    }
.end annotation


# instance fields
.field protected mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsChangedAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 25
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
    .locals 1

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;->access$100()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getCloudSettingsChangedAction()Ljava/lang/String;
.end method

.method public abstract getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.end method

.method public abstract isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
.end method

.method public abstract isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
.end method

.method public abstract requestCloudSettingsInfo()V
.end method
