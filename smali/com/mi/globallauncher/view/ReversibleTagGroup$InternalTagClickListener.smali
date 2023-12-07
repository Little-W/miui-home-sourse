.class Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalTagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$000(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$100(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->deleteTag(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$300(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$300(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;->onTagClick(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
