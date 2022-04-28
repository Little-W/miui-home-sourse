.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WvjZeH-wmqszy1TK-VUfMpxykho;

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

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$7(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
