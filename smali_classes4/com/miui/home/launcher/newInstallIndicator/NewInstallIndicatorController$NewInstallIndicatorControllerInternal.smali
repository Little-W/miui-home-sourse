.class Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;
.super Ljava/lang/Object;
.source "NewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewInstallIndicatorControllerInternal"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    return-object v0
.end method
