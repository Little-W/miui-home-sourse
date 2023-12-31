.class Lcom/miui/home/launcher/LauncherStateManager$3;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherStateManager;

.field final synthetic val$state:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->val$state:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->val$state:Lcom/miui/home/launcher/LauncherState;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherStateManager;->access$300(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$3;->val$state:Lcom/miui/home/launcher/LauncherState;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherStateManager;->access$400(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method
