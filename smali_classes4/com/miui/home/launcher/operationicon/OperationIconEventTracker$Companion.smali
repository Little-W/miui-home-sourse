.class public final Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;
.super Ljava/lang/Object;
.source "OperationIconEventTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconEventTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconEventTracker.kt\ncom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion\n*L\n1#1,130:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    return-object p0
.end method
