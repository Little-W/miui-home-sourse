.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollector$PxEvU_0Bt__ZB_vhA74iUR1vq1M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->lambda$PxEvU_0Bt__ZB_vhA74iUR1vq1M(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
