.class Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$CNNewInstallIndicatorControllerInner;
.super Ljava/lang/Object;
.source "CNNewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CNNewInstallIndicatorControllerInner"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;-><init>(Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$1;)V

    sput-object v0, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$CNNewInstallIndicatorControllerInner;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;
    .locals 1

    .line 20
    sget-object v0, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$CNNewInstallIndicatorControllerInner;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;

    return-object v0
.end method
