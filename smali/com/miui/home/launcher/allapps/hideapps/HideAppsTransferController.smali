.class public final Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;
.super Ljava/lang/Object;
.source "HideAppsTransferController.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWhiteListToTransfer(Landroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
