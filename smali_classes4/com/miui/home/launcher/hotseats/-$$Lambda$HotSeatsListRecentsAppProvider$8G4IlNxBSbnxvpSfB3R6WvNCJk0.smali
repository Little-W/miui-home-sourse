.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;->f$1:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$11$HotSeatsListRecentsAppProvider(Ljava/lang/Runnable;Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method
