.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;
.super Ljava/lang/Object;
.source "ReversibleTagGroup.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 825
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;->val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 831
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
