.class Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$102(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$102(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;->this$0:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->access$102(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)Z

    return-void
.end method
