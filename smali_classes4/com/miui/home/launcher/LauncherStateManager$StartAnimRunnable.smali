.class Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;
.super Ljava/lang/Object;
.source "LauncherStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAnimRunnable"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherStateManager;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherStateManager;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager;->access$500(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, p0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
