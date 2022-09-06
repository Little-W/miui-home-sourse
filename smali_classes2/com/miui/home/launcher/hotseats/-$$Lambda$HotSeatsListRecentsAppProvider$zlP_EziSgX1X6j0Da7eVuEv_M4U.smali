.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$1(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method
