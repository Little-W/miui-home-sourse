.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:I

.field private final synthetic f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$5:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$1:Ljava/lang/Runnable;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$5:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$1:Ljava/lang/Runnable;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$2:I

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;->f$5:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/LauncherAnimationRunner;->lambda$onAnimationStart$0$LauncherAnimationRunner(Ljava/lang/Runnable;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
