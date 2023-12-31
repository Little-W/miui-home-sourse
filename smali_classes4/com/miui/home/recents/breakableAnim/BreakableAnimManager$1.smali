.class Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BreakableAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;

.field final synthetic val$anim:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;Ljava/lang/Object;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->this$0:Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;

    iput-object p2, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->val$anim:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 44
    iget-boolean p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->canceled:Z

    if-nez p1, :cond_0

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->this$0:Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->this$0:Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;

    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;->val$anim:Ljava/lang/Object;

    iput-object p0, p1, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    return-void
.end method
