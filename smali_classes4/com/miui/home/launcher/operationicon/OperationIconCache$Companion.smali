.class public final Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;
.super Ljava/lang/Object;
.source "OperationIconCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/operationicon/OperationIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconCache$Companion\n*L\n1#1,316:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;

    return-object p0
.end method
