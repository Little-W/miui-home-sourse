.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/Launcher$OnResumeCallback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

.field private final synthetic f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$2:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$2:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    return-void
.end method


# virtual methods
.method public final onLauncherResume()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;->f$2:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->lambda$onCreateAnimation$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
