.class Lcom/miui/home/recents/util/RemoteAnimationProvider$1;
.super Lcom/miui/home/recents/LauncherAnimationRunner;
.source "RemoteAnimationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/Handler;Z)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;->this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;->this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;)V

    return-void
.end method
