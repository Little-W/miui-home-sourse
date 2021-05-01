.class Lcom/miui/home/launcher/Launcher$48;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 4917
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4919
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    const-string v1, "translationY"

    const/4 v2, 0x1

    .line 4920
    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4921
    new-instance v1, Lcom/miui/home/launcher/Launcher$48$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$48$1;-><init>(Lcom/miui/home/launcher/Launcher$48;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4931
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4933
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7400(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
