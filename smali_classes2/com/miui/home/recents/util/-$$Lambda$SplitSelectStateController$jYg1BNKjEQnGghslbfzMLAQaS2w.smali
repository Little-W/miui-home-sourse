.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

.field private final synthetic f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$2:Ljava/lang/Runnable;

.field private final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$2:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;->f$3:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->lambda$startSplitLaunchAnimation$0$SplitSelectStateController([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-void
.end method
