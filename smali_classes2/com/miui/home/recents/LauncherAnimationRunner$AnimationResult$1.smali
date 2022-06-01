.class Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;->this$0:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;->this$0:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method
