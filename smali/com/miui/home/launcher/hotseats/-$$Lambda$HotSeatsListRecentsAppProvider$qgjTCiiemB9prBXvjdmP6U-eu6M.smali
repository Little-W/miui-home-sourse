.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qgjTCiiemB9prBXvjdmP6U-eu6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qgjTCiiemB9prBXvjdmP6U-eu6M;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qgjTCiiemB9prBXvjdmP6U-eu6M;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qgjTCiiemB9prBXvjdmP6U-eu6M;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qgjTCiiemB9prBXvjdmP6U-eu6M;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$7(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/GroupShortcutInfo;

    move-result-object p1

    return-object p1
.end method
