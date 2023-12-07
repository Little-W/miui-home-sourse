.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$5E752JEseIybnW5xeDH4E7mbDmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$5E752JEseIybnW5xeDH4E7mbDmM;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$5E752JEseIybnW5xeDH4E7mbDmM;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$5$HotSeatsListRecentsAppProvider(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method
