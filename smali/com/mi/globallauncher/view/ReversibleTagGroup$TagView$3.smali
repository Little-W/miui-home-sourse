.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;
.super Ljava/lang/Object;
.source "ReversibleTagGroup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

.field final synthetic val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    .line 799
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_3

    .line 801
    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 802
    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p2, p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getLastNormalTagView()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 804
    invoke-static {p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$100(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 805
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->removeView(Landroid/view/View;)V

    .line 806
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 807
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;->onDelete(Lcom/mi/globallauncher/view/ReversibleTagGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 812
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    .line 814
    :cond_1
    invoke-virtual {p2, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    return p1
.end method
