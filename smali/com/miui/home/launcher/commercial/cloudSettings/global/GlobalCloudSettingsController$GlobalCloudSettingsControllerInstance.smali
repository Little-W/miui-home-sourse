.class Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$GlobalCloudSettingsControllerInstance;
.super Ljava/lang/Object;
.source "GlobalCloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCloudSettingsControllerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$1;)V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$GlobalCloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$GlobalCloudSettingsControllerInstance;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;

    return-object v0
.end method
