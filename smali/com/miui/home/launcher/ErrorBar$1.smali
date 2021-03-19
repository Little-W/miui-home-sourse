.class Lcom/miui/home/launcher/ErrorBar$1;
.super Ljava/lang/Object;
.source "ErrorBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ErrorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ErrorBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ErrorBar;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {p1}, Lcom/miui/home/launcher/ErrorBar;->access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$000(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ConflictsManager;->releaseLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {p1}, Lcom/miui/home/launcher/ErrorBar;->access$200(Lcom/miui/home/launcher/ErrorBar;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x7

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {p1}, Lcom/miui/home/launcher/ErrorBar;->access$200(Lcom/miui/home/launcher/ErrorBar;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {p1}, Lcom/miui/home/launcher/ErrorBar;->access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
