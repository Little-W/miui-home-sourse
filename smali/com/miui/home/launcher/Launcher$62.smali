.class Lcom/miui/home/launcher/Launcher$62;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->restoreWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$hostView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 6630
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$62;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$62;->val$hostView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 6633
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$62;->val$hostView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6634
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher$62;->val$hostView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
