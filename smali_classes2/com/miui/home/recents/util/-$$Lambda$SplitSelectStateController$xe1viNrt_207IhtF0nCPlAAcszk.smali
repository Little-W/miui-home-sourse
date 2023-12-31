.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

.field private final synthetic f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$3:Ljava/lang/Runnable;

.field private final synthetic f$4:Ljava/util/function/Consumer;

.field private final synthetic f$5:Z

.field private final synthetic f$6:I

.field private final synthetic f$7:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$4:Ljava/util/function/Consumer;

    iput-boolean p6, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$5:Z

    iput p7, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$6:I

    iput-object p8, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$7:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$3:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$4:Ljava/util/function/Consumer;

    iget-boolean v5, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$5:Z

    iget v6, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$6:I

    iget-object v7, p0, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;->f$7:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/util/SplitSelectStateController;->lambda$startSplitLaunchAnimation$1$SplitSelectStateController([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
