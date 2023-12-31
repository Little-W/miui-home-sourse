.class Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;
.super Ljava/lang/Object;
.source "GlobalNewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalNewInstallIndicatorControllerInner"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;-><init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$1;)V

    sput-object v0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
    .locals 1

    .line 52
    sget-object v0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    return-object v0
.end method
