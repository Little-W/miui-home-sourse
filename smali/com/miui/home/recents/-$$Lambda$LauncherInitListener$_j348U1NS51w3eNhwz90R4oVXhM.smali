.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RemoteAnimationProvider;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/LauncherInitListener;

.field private final synthetic f$1:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;->f$1:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;->f$1:Landroid/os/CancellationSignal;

    invoke-static {v0, v1, p1}, Lcom/miui/home/recents/LauncherInitListener;->lambda$init$0(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
