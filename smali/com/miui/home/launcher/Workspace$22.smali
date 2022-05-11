.class Lcom/miui/home/launcher/Workspace$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 3775
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3778
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    return-void
.end method
