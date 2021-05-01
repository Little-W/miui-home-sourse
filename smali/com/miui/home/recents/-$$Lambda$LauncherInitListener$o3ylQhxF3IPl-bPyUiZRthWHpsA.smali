.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RemoteAnimationProvider;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/LauncherInitListener;

.field private final synthetic f$1:Landroid/os/CancellationSignal;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$0:Lcom/miui/home/recents/LauncherInitListener;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$o3ylQhxF3IPl-bPyUiZRthWHpsA;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/recents/LauncherInitListener;->lambda$init$514(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
