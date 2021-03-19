.class Lcom/miui/home/launcher/CellLayout$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->showEmptyCellMark(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 3096
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$11;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3099
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$11;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/CellLayout;->access$2200(Lcom/miui/home/launcher/CellLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3100
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$11;->this$0:Lcom/miui/home/launcher/CellLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setWillNotDraw(Z)V

    :cond_0
    return-void
.end method
