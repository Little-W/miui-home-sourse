.class Lcom/miui/home/launcher/CellScreen$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/CellScreen;->access$002(Lcom/miui/home/launcher/CellScreen;Z)Z

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/CellScreen;->access$100(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/CellScreen;->access$100(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->onQuickModeExitEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/CellScreen;->access$002(Lcom/miui/home/launcher/CellScreen;Z)Z

    return-void
.end method
