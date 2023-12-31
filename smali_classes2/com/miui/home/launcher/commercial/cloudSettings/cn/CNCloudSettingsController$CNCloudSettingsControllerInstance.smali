.class Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$CNCloudSettingsControllerInstance;
.super Ljava/lang/Object;
.source "CNCloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CNCloudSettingsControllerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$1;)V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$CNCloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$CNCloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    return-object v0
.end method
