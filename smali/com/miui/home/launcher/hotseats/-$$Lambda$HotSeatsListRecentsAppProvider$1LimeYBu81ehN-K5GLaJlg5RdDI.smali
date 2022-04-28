.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LimeYBu81ehN-K5GLaJlg5RdDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LimeYBu81ehN-K5GLaJlg5RdDI;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LimeYBu81ehN-K5GLaJlg5RdDI;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$6(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method
