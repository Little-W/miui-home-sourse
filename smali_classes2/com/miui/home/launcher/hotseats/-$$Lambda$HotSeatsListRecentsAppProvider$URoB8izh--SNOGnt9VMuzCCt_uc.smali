.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$7$HotSeatsListRecentsAppProvider(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method
