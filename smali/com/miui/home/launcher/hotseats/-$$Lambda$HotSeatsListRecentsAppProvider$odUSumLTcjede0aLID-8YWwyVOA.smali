.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$odUSumLTcjede0aLID-8YWwyVOA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$5(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method
