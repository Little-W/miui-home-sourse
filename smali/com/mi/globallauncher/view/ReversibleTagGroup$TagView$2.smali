.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;
.super Ljava/lang/Object;
.source "ReversibleTagGroup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 774
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 778
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 779
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 780
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isInputAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 783
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->endInput()V

    .line 784
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 785
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p2, p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    iget-object p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;->onAppend(Lcom/mi/globallauncher/view/ReversibleTagGroup;Ljava/lang/String;)V

    .line 787
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendInputTag()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
