.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;

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

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$2(Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
